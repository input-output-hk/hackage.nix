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
      specVersion = "1.10";
      identifier = { name = "dhall-nix"; version = "1.1.20"; };
      license = "BSD-3-Clause";
      copyright = "2017 Gabriel Gonzalez";
      maintainer = "Gabriel439@gmail.com";
      author = "Gabriel Gonzalez";
      homepage = "";
      url = "";
      synopsis = "Dhall to Nix compiler";
      description = "Use this package if you want to compile Dhall expressions to the Nix language.\nYou can use this package as a library or an executable:\n\n* See the \"Dhall.Nix\" module if you want to use this package as a library\n\n* Use the @dhall-to-nix@ program from this package if you want an executable\n\nThe \"Dhall.Nix\" module also contains instructions for how to use this package";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-fix" or (errorHandler.buildDepError "data-fix"))
          (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
          (hsPkgs."hnix" or (errorHandler.buildDepError "hnix"))
          (hsPkgs."lens-family-core" or (errorHandler.buildDepError "lens-family-core"))
          (hsPkgs."neat-interpolation" or (errorHandler.buildDepError "neat-interpolation"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = if system.isWindows then false else true;
      };
      exes = {
        "dhall-to-nix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."dhall" or (errorHandler.buildDepError "dhall"))
            (hsPkgs."dhall-nix" or (errorHandler.buildDepError "dhall-nix"))
            (hsPkgs."hnix" or (errorHandler.buildDepError "hnix"))
            (hsPkgs."optparse-generic" or (errorHandler.buildDepError "optparse-generic"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = (if system.isWindows
            then false
            else true) && (if system.isWindows then false else true);
        };
      };
    };
  }