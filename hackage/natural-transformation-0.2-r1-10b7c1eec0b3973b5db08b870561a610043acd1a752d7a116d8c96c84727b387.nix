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
      identifier = { name = "natural-transformation"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015 The University of Kansas";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "https://github.com/ku-fpg/natural-transformation";
      url = "";
      synopsis = "A natural transformation package.";
      description = "A natural transformation transforms a container @f a@ into another\ncontainer @g a@ while preserving the internal structure. Natural\ntransformations act as functor morphisms in category theory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "natural-transformation-properties" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."natural-transformation" or (errorHandler.buildDepError "natural-transformation"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            ];
          buildable = true;
          };
        };
      };
    }