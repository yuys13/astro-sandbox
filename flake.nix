{
  description = "Astro sandbox development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    treefmt-nix = {
      url = "github:numtide/treefmt-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    inputs@{ flake-parts, ... }:
    flake-parts.lib.mkFlake { inherit inputs; } {
      imports = [
        inputs.treefmt-nix.flakeModule
      ];

      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "aarch64-darwin"
      ];

      perSystem =
        { pkgs, ... }:
        {
          treefmt.config = {
            projectRootFile = "flake.nix";
            programs.nixfmt.enable = true;
            programs.prettier = {
              enable = true;
              excludes = [
                "*.yml"
                "*.yaml"
              ];
            };
          };

          devShells.default = pkgs.mkShell {
            packages = with pkgs; [
              nodejs_24
              pnpm
              astro-language-server
              typescript
            ];

            shellHook = ''
              echo "🔥 Astro Sandbox Dev Shell 🚀"
              echo "Node.js $(node -v)"
              echo "pnpm $(pnpm -v)"
              echo "Astro LS $(astro-ls --version 2>/dev/null || echo 'not found')"
              echo "TypeScript $(tsc --version 2>/dev/null || echo 'not found')"

              export NODE_PATH="${pkgs.typescript}/lib/node_modules:$NODE_PATH"
            '';
          };
        };
    };
}
