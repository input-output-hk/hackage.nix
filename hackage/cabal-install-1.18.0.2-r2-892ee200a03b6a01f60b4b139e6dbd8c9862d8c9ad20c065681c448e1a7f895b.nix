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
    flags = { old-directory = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "cabal-install"; version = "1.18.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2005 Lemmih <lemmih@gmail.com>\n2006 Paolo Martini <paolo@nemail.it>\n2007 Bjorn Bringert <bjorn@bringert.net>\n2007 Isaac Potoczny-Jones <ijones@syntaxpolice.org>\n2007-2012 Duncan Coutts <duncan@community.haskell.org>";
      maintainer = "cabal-devel@haskell.org";
      author = "Lemmih <lemmih@gmail.com>\nPaolo Martini <paolo@nemail.it>\nBjorn Bringert <bjorn@bringert.net>\nIsaac Potoczny-Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@community.haskell.org>";
      homepage = "http://www.haskell.org/cabal/";
      url = "";
      synopsis = "The command-line interface for Cabal and Hackage.";
      description = "The \\'cabal\\' command-line program simplifies the process of managing\nHaskell software by automating the fetching, configuration, compilation\nand installation of Haskell libraries and programs.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabal" = {
          depends = ([
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            ] ++ (if flags.old-directory
            then [
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              ]
            else [
              (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
              (hsPkgs."process" or (errorHandler.buildDepError "process"))
              ])) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      tests = {
        "unit-tests" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck2" or (errorHandler.buildDepError "test-framework-quickcheck2"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            ] ++ (pkgs.lib).optional (flags.old-directory) (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }