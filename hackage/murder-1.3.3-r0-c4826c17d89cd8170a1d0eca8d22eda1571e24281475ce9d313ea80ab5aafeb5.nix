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
      specVersion = "1.2.3";
      identifier = { name = "murder"; version = "1.3.3"; };
      license = "LicenseRef-LGPL";
      copyright = "Universiteit Utrecht";
      maintainer = "Marcos Viera <mviera@fing.edu.uy>";
      author = "";
      homepage = "http://www.cs.uu.nl/wiki/Center/CoCoCo ";
      url = "";
      synopsis = "MUtually Recursive Definitions Explicitly Represented ";
      description = "The murder library is an EDSL for grammar fragments as first-class values. It provides combinators to define and extend grammars, and produce compilers out of them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."TTTAS" or (errorHandler.buildDepError "TTTAS"))
          (hsPkgs."AspectAG" or (errorHandler.buildDepError "AspectAG"))
          (hsPkgs."uulib" or (errorHandler.buildDepError "uulib"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."ListLike" or (errorHandler.buildDepError "ListLike"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."HList" or (errorHandler.buildDepError "HList"))
          ];
        buildable = true;
        };
      };
    }