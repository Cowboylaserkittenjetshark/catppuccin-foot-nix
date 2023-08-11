{
  description = "A very basic flake";

  outputs = { self, nixpkgs }:
    let
      makeFlavor = file: builtins.fromTOML (builtins.readFile file);
    in
    {
      flavors = {
        frappe = makeFlavor ./catppuccin-frappe.toml;
        latte = makeFlavor ./catppuccin-latte.toml;
        macchiato = makeFlavor ./catppuccin-macchiato.toml;
        mocha = makeFlavor ./catppuccin-mocha.toml;
      };
    };
}
