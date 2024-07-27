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
      identifier = { name = "monomer-flatpak-example"; version = "0.0.15.3"; };
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
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."data-default-class" or (errorHandler.buildDepError "data-default-class"))
            (hsPkgs."dbus" or (errorHandler.buildDepError "dbus"))
            (hsPkgs."desktop-portal" or (errorHandler.buildDepError "desktop-portal"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."file-io" or (errorHandler.buildDepError "file-io"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."modern-uri" or (errorHandler.buildDepError "modern-uri"))
            (hsPkgs."monomer" or (errorHandler.buildDepError "monomer"))
            (hsPkgs."monomer-hagrid" or (errorHandler.buildDepError "monomer-hagrid"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          pkgconfig = [
            (pkgconfPkgs."libspa-0.2" or (errorHandler.pkgConfDepError "libspa-0.2"))
            (pkgconfPkgs."libpipewire-0.3" or (errorHandler.pkgConfDepError "libpipewire-0.3"))
          ];
          build-tools = [
            (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
          ];
          buildable = true;
        };
      };
    };
  }