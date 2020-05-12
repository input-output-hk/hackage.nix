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
      identifier = { name = "reify"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "None";
      author = "Bernie Pope <bjpop@csse.unimelb.edu.au>";
      homepage = "http://www.cs.mu.oz.au/~bjpop/code.html";
      url = "";
      synopsis = "Serialize data";
      description = "This is a library for reifying Haskell data structures in GHC.\nHaskell values are mapped into representations that we call\ngraphs (for want of a better name). The representations are\nencoded in the Haskell type Graph, which is just an ordinary\nalgebraic data type. This will not reify functions.\n\nBitrotten.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
          ];
        buildable = true;
        };
      exes = {
        "reify" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            ];
          buildable = true;
          };
        };
      };
    }