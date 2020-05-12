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
      specVersion = "1.2.1";
      identifier = { name = "grammar-combinators"; version = "0.2.1"; };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Dominique Devriese <dominique.devriese@gmail.com>";
      author = "Dominique Devriese <dominique.devriese@gmail.com>";
      homepage = "http://projects.haskell.org/grammar-combinators/ ";
      url = "";
      synopsis = "A parsing library of context-free grammar combinators.";
      description = "The grammar-combinators library is a novel parsing library using\nan explicit representation of recursion to provide various novel\nfeatures, for grammar analysis, transformation and parsing\nfunctionality.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."multirec" or (errorHandler.buildDepError "multirec"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."enumerable" or (errorHandler.buildDepError "enumerable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."MaybeT" or (errorHandler.buildDepError "MaybeT"))
          (hsPkgs."uu-parsinglib" or (errorHandler.buildDepError "uu-parsinglib"))
          (hsPkgs."graphviz" or (errorHandler.buildDepError "graphviz"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          ];
        buildable = true;
        };
      };
    }