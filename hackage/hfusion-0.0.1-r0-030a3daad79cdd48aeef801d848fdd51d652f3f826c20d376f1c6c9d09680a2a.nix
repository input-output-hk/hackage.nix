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
      identifier = { name = "hfusion"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "facundominguez @ f i n g . e d u . u y";
      author = "Facundo Dominguez";
      homepage = "http://www.fing.edu.uy/inco/proyectos/fusion";
      url = "";
      synopsis = "A library for fusing a subset of Haskell programs.";
      description = "This package implements algorithms for fusing pure functions which can\nbe written as primitive recursive functions or as hylomorphisms. The\nfunctions can be mutually recursive and make recursion over multiple\narguments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."haskell-src" or (errorHandler.buildDepError "haskell-src"))
          (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }