# ~/mcdanielConstruction/flake.nix
{
  description = "A dev environment for McDaniel Construction website and other fun stuff";

  # Define the inputs for this flake, primarily the nixpkgs package set.
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05"; # You can pin to a specific version if you prefer
  };

  # Define the outputs of this flake.
  outputs =
    { self, nixpkgs }:
    let
      # Use the x86_64-linux system for our package set.
      # You can add more systems here for cross-platform compatibility.
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        config.allowUnfree = true; # This now correctly configures the pkgs set
      };
    in
    {
      # The 'devShell' is the environment that 'nix develop' or 'direnv' will use.
      devShells.${system}.default = pkgs.mkShell {
        # The packages to make available in the development shell.
        buildInputs = [
          pkgs.hugo
          pkgs.steam-run
          pkgs.bun
          pkgs.git # It's good practice to include git as well
          pkgs.nodejs # Provides node, npm, and npx
          pkgs.nodePackages.postcss
          pkgs.nodePackages.autoprefixer
        ];

        # You can set environment variables here if needed.
        shellHook = ''
          echo "Entering Hugo development environment..."
        '';
      };
    };
}
