{
  description = "Nixos config flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    zen-browser.url = "github:0xc000022070/zen-browser-flake";

    catppuccin.url = "github:catppuccin/nix";

    inputs.hyprland.url = "github:hyprwm/Hyprland";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, catppuccin, ... }@inputs: {
    # use "nixos", or your hostname as the name of the configuration
    # it's a better practice than "default" shown in the video
    nixosConfigurations.laptop = nixpkgs.lib.nixosSystem {
      specialArgs = {inherit inputs;};
      modules = [
        ./hosts/laptop/configuration.nix
        catppuccin.nixosModules.catppuccin
        inputs.home-manager.nixosModules.default
        {
          # if you use home-manager
          home-manager.users.ingowolf = {
            imports = [
              catppuccin.homeManagerModules.catppuccin
            ];
          };
        }
      ];
    };
  };
}
