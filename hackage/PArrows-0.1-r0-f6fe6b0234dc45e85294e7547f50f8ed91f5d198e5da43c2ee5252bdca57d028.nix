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
      specVersion = "1.0";
      identifier = { name = "PArrows"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Einar Karttunen <ekarttun@cs.helsinki.fi>";
      homepage = "http://www.cs.helsinki.fi/u/ekarttun/PArrows/";
      url = "";
      synopsis = "Arrow parser combinators similar to Parsec";
      description = "PArrows is an arrows based parsing combinator library written in Haskell.\nThe library is similar to Parsec, but arrows allow for more future optimizations.\n\nCurrently PArrows is only tested with GHC, although making it work with Hugs should be easy.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        buildable = true;
      };
    };
  }