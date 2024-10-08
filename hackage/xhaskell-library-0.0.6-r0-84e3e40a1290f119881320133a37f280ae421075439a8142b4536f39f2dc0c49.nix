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
      identifier = { name = "xhaskell-library"; version = "0.0.6"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Kenny Zhuo Ming Lu and Martin Sulzmann";
      maintainer = "luzhuomi@gmail.com, martin.sulzmann@gmail.com";
      author = "Kenny Zhuo Ming Lu and Martin Sulzmann";
      homepage = "http://code.google.com/p/xhaskell-library/";
      url = "http://darcs.haskell.org/packages/regex-unstable/xhaskell-library";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "Regex algorithm implementation using partial derivatives";
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
        ] ++ (if flags.base4
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
        buildable = true;
      };
    };
  }