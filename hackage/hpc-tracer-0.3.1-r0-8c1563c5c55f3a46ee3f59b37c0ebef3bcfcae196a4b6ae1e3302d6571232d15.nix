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
      identifier = { name = "hpc-tracer"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2006 Andy Gill, Colin Runciman, (c) 2006-2007 Galois Inc.";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill <andygill@ku.edu>";
      homepage = "";
      url = "";
      synopsis = "Tracer with AJAX interface";
      description = "An incomplete component of the Hpc toolkit which provides the\nability to step through coverage ticks as they happen, giving a\npoor mans debugger.  Requires the binary being traced to be build\nusing a specific version of ghc-6.7, so YMWV.\nThe plan is to port this to the new GHC API, giving both tracing\nand free variable examination via an Ajax interface.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hpc-tracer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
          buildable = true;
        };
      };
    };
  }