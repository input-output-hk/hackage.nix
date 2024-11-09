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
      identifier = { name = "AspectAG"; version = "0.8.0.0"; };
      license = "GPL-2.0-or-later";
      copyright = "";
      maintainer = "jpgarcia@fing.edu.uy";
      author = "Juan García-Garland, Marcos Viera, Alberto Pardo";
      homepage = "";
      url = "";
      synopsis = "First-class Attribute Grammars implemented using type-level programming.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."poly-rec" or (errorHandler.buildDepError "poly-rec"))
          (hsPkgs."requirements" or (errorHandler.buildDepError "requirements"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
      tests = {
        "AspectAG2-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."AspectAG" or (errorHandler.buildDepError "AspectAG"))
            (hsPkgs."poly-rec" or (errorHandler.buildDepError "poly-rec"))
            (hsPkgs."requirements" or (errorHandler.buildDepError "requirements"))
          ];
          buildable = true;
        };
      };
    };
  }