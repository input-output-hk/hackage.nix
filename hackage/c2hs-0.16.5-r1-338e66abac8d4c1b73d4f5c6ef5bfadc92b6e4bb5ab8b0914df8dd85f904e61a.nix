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
    flags = { base3 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "c2hs"; version = "0.16.5"; };
      license = "GPL-2.0-only";
      copyright = "Copyright (c) 1999-2007 Manuel M T Chakravarty\n2005-2013 Duncan Coutts\n2008      Benedikt Huber";
      maintainer = "chak@cse.unsw.edu.au, duncan@community.haskell.org, ian@skybluetrades.net";
      author = "Manuel M T Chakravarty";
      homepage = "https://github.com/haskell/c2hs";
      url = "";
      synopsis = "C->Haskell FFI tool that gives some cross-language type safety";
      description = "C->Haskell assists in the development of Haskell bindings to C\nlibraries. It extracts interface information from C header\nfiles and generates Haskell code with foreign imports and\nmarshaling. Unlike writing foreign imports by hand (or using\nhsch2s), this ensures that C functions are imported with the\ncorrect Haskell types.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "c2hs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."language-c" or (errorHandler.buildDepError "language-c"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ] ++ (if flags.base3
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