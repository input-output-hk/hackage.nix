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
      identifier = { name = "ghc-datasize"; version = "0.2.7"; };
      license = "BSD-3-Clause";
      copyright = "Dennis Felsing 2012-2019";
      maintainer = "Dennis Felsing <dennis@felsing.org>";
      author = "Dennis Felsing <dennis@felsing.org>";
      homepage = "https://dennis.felsing.org/ghc-datasize";
      url = "";
      synopsis = "Determine the size of data structures in GHC's memory";
      description = "ghc-datasize is a tool to determine the size of data\nstructures in GHC's memory. Determining the size of\nrecursive data structures is supported. All sizes are in\nBytes.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."ghc-heap" or (errorHandler.buildDepError "ghc-heap"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        buildable = true;
      };
    };
  }