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
    flags = { test-doctests = true; test-hlint = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "gc"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/ekmett/gc/";
      url = "";
      synopsis = "Poor Richard's Memory Manager";
      description = "This package implements a form of <http://www.cs.canisius.edu/~hertzm/prmm-ismm-2011.pdf Poor Richard's Memory Manager>\nby Hertz, Kane, Keudel, Bai, Ding, Gu and Bard in user-space in GHC.\n\nUsage:\n\n> import System.Mem.Manager\n> main = do\n>   _ <- selfishManager\n>   ...\n\nNow, the background thread that was spawned by @selfishManager@ will watch for signs that the host operating system\nis starting to cause the current process to page out to disk and respond with more aggressive garbage collection.\n\nThis empowers your code to try to avoid the inevitable death spiral that follows when GC has to happen with paged out data.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doctests)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = if !flags.test-doctests then false else true;
          };
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        };
      };
    }