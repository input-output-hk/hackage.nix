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
      specVersion = "0";
      identifier = { name = "geniconvert"; version = "0.17.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "eric.kow@loria.fr";
      author = "Carlos Areces and Eric Kow";
      homepage = "http://wiki.loria.fr/wiki/GenI";
      url = "";
      synopsis = "Conversion utility for the GenI generator";
      description = "Conversion utility for the GenI generator";
      buildType = "Simple";
      };
    components = {
      exes = {
        "geniconvert" = {
          depends = [
            (hsPkgs."GenI" or (errorHandler.buildDepError "GenI"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."HaXml" or (errorHandler.buildDepError "HaXml"))
            ];
          buildable = true;
          };
        };
      };
    }