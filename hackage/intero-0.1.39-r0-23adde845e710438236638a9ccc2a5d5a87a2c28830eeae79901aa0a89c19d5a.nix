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
      specVersion = "1.14";
      identifier = { name = "intero"; version = "0.1.39"; };
      license = "BSD-3-Clause";
      copyright = "2016 FP Complete,\n2016 Chris Done,\n2012 Kazu Yamamoto,\n2008 Claus Reinke,\n2005 The University of Glasgow";
      maintainer = "chrisdone@fpcomplete.com";
      author = "Chris Done, The University of Glasgow";
      homepage = "https://github.com/commercialhaskell/intero";
      url = "";
      synopsis = "Complete interactive development program for Haskell";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "intero" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-paths" or (errorHandler.buildDepError "ghc-paths"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."syb" or (errorHandler.buildDepError "syb"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ] ++ (pkgs.lib).optionals (compiler.isGhc && (compiler.version).ge "8.0.1") [
            (hsPkgs."ghci" or (errorHandler.buildDepError "ghci"))
            (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
            ]) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      tests = {
        "intero-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."regex-compat" or (errorHandler.buildDepError "regex-compat"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }