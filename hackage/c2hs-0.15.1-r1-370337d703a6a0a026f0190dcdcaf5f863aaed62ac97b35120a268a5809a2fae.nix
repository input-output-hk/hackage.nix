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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "c2hs"; version = "0.15.1"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) [1999..2007] Manuel M T Chakravarty";
      maintainer = "chak@cse.unsw.edu.au, duncan@haskell.org";
      author = "Manuel M T Chakravarty";
      homepage = "http://www.cse.unsw.edu.au/~chak/haskell/c2hs/";
      url = "";
      synopsis = "C->Haskell Interface Generator";
      description = "C->Haskell assists in the development of Haskell bindings to C\nlibraries.  It extracts C interface information from vanilla header\nfiles and generates marshaling and signature code in Haskell.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "c2hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ (if flags.splitbase
            then [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."array" or (errorHandler.buildDepError "array"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            ]
            else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]);
          buildable = true;
        };
      };
    };
  }