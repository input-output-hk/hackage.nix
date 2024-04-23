{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "monomer-flatpak-example"; version = "0.0.5.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "garethdanielsmith@gmail.com";
      author = "";
      homepage = "https://github.com/Dretch/monomer-flatpak-example#readme";
      url = "";
      synopsis = "Monomer Flatpak Example Application.";
      description = "An example of how to package Monomer apps with Flatpak.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "monomer-flatpak-example" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
            (hsPkgs."monomer-hagrid" or (errorHandler.buildDepError "monomer-hagrid"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }