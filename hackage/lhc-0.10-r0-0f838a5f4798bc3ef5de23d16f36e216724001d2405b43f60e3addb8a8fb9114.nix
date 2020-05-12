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
    flags = {
      hpc = false;
      threaded = false;
      lhc-regress = false;
      lhc-pkg = true;
      with-libs = false;
      };
    package = {
      specVersion = "1.6";
      identifier = { name = "lhc"; version = "0.10"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "lhc@projects.haskell.org";
      author = "David Himmelstrup, Austin Seipp";
      homepage = "http://lhc.seize.it/";
      url = "";
      synopsis = "LHC Haskell Compiler";
      description = "lhc is a haskell compiler which aims to produce the most efficient programs possible via whole\nprogram analysis and other optimizations.";
      buildType = "Custom";
      };
    components = {
      exes = {
        "lhc" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."digest" or (errorHandler.buildDepError "digest"))
            (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
            (hsPkgs."core" or (errorHandler.buildDepError "core"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."derive" or (errorHandler.buildDepError "derive"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
            ];
          buildable = if compiler.isGhc && false && system.isX86_64
            then true
            else false;
          };
        "lhc-regress" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."extensible-exceptions" or (errorHandler.buildDepError "extensible-exceptions"))
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (errorHandler.buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (errorHandler.buildDepError "test-framework-hunit"))
            (hsPkgs."test-framework-quickcheck" or (errorHandler.buildDepError "test-framework-quickcheck"))
            ];
          buildable = if flags.lhc-regress && (compiler.isGhc && false) && system.isX86_64
            then true
            else false;
          };
        "lhc-pkg" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."haskell98" or (errorHandler.buildDepError "haskell98"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (errorHandler.buildDepError "unix"));
          buildable = if flags.lhc-pkg && (compiler.isGhc && false) && system.isX86_64
            then true
            else false;
          };
        };
      };
    }