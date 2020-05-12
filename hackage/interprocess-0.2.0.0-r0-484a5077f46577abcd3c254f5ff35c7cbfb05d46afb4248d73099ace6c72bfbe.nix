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
    flags = { examples = false; dev = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "interprocess"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Artem Chirkin";
      maintainer = "chirkin@arch.ethz.ch";
      author = "Artem Chirkin";
      homepage = "https://github.com/achirkin/interprocess";
      url = "";
      synopsis = "Shared memory and control structures for IPC";
      description = "Provides portable shared memory allocator and some synchronization primitives.\nCan be used for interprocess communication.\nRefer to README.md for further information.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "concurrent-malloc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."interprocess" or (errorHandler.buildDepError "interprocess"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "wait-qsem" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."interprocess" or (errorHandler.buildDepError "interprocess"))
            ];
          buildable = if !flags.examples then false else true;
          };
        "wait-mvar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."interprocess" or (errorHandler.buildDepError "interprocess"))
            ];
          buildable = if !flags.examples then false else true;
          };
        };
      tests = {
        "StoredMVar" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
            (hsPkgs."interprocess" or (errorHandler.buildDepError "interprocess"))
            ];
          buildable = true;
          };
        };
      };
    }