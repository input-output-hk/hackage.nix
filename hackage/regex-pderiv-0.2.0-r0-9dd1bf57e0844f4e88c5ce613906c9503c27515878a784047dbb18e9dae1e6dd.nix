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
    flags = { base4 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "regex-pderiv"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2010-2012, Kenny Zhuo Ming Lu and Martin Sulzmann";
      maintainer = "luzhuomi@gmail.com, martin.sulzmann@gmail.com";
      author = "Kenny Zhuo Ming Lu and Martin Sulzmann";
      homepage = "http://code.google.com/p/xhaskell-library/";
      url = "http://darcs.haskell.org/packages/regex-unstable/xhaskell-library";
      synopsis = "Replaces/Enhances Text.Regex. Implementing regular expression matching using Antimirov's partial derivatives. ";
      description = "Regex algorithm implementation using partial derivatives. The svn source also shipped with two other referential implementations, e.g. Thomspon NFA and Glushkov NFA. For more detail please check out http://code.google.com/p/xhaskell-library/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."bitset" or (errorHandler.buildDepError "bitset"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ];
        buildable = true;
        };
      };
    }