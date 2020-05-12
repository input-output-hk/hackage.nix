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
      identifier = { name = "autonix-deps-kf5"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Thomas Tuegel";
      maintainer = "ttuegel@gmail.com";
      author = "Thomas Tuegel";
      homepage = "";
      url = "";
      synopsis = "Generate dependencies for KDE 5 Nix expressions";
      description = "@autonix-deps-kf5@ automatically detects dependencies for KDE Frameworks 5\nand related software collections. The generated dependencies are used to\nautomatically create expressions for use by the Nix package manager.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."autonix-deps" or (errorHandler.buildDepError "autonix-deps"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "kf5-deps" = {
          depends = [
            (hsPkgs."autonix-deps" or (errorHandler.buildDepError "autonix-deps"))
            (hsPkgs."autonix-deps-kf5" or (errorHandler.buildDepError "autonix-deps-kf5"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }