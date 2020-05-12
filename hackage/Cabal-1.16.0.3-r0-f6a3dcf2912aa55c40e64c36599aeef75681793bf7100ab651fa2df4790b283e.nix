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
    flags = { base4 = true; base3 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "Cabal"; version = "1.16.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2003-2006, Isaac Jones\n2005-2011, Duncan Coutts";
      maintainer = "cabal-devel@haskell.org";
      author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@community.haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "A framework for packaging Haskell software";
      description = "The Haskell Common Architecture for Building Applications and\nLibraries: a framework defining a common interface for authors to more\neasily build their Haskell applications in a portable way.\n\nThe Haskell Cabal is part of a larger infrastructure for distributing,\norganizing, and cataloging Haskell libraries and tools.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]) ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ (pkgs.lib).optionals (flags.base3) [
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          ]) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
        buildable = true;
        };
      tests = {
        "unit-tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ];
          buildable = true;
          };
        };
      };
    }