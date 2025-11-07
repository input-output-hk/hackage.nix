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
      specVersion = "3.0";
      identifier = { name = "deriving-via-fun"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2025 Li-yao Xia";
      maintainer = "lysxia@gmail.com";
      author = "Li-yao Xia";
      homepage = "";
      url = "";
      synopsis = "Deriving via first-class functions";
      description = "Derive class instances by mapping over them\nlike they are functors.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "deriving-via-fun-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."deriving-via-fun" or (errorHandler.buildDepError "deriving-via-fun"))
          ];
          buildable = true;
        };
      };
    };
  }