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
            ];

            shellHook = ''
              echo "🔥 Astro Sandbox Dev Shell 🚀"
              echo "Node.js $(node -v)"
              echo "pnpm $(pnpm -v)"
            '';
          };
        };
    };
}
