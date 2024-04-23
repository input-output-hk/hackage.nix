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
      specVersion = "1.6";
      identifier = { name = "nondeterminism"; version = "1.0"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Andrei Barbu <andrei@0xab.com>";
      author = "Andrei Barbu <andrei@0xab.com>";
      homepage = "";
      url = "";
      synopsis = "A monad and monad transformer for nondeterministic computations.";
      description = "Nondeterministic computations";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ];
        buildable = true;
      };
    };
  }