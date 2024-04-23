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
    flags = { auto = true; no-ghc-lib = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "ghc-lib-parser-ex"; version = "9.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2020, Shayne Fletcher. All rights reserved.";
      maintainer = "shayne@shaynefletcher.org";
      author = "Shayne Fletcher";
      homepage = "https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme";
      url = "";
      synopsis = "Algorithms on GHC parse trees";
      description = "Please see the README on GitHub at <https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
        ] ++ (if flags.auto && (compiler.isGhc && compiler.version.ge "9.0.0") && (compiler.isGhc && compiler.version.lt "9.0.1")
          then [
            (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
            (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
            (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
          ]
          else if flags.auto
            then [
              (hsPkgs."ghc-lib-parser" or (errorHandler.buildDepError "ghc-lib-parser"))
            ]
            else if flags.no-ghc-lib
              then [
                (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
                (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
                (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
              ]
              else [
                (hsPkgs."ghc-lib-parser" or (errorHandler.buildDepError "ghc-lib-parser"))
              ]);
        buildable = true;
      };
      tests = {
        "ghc-lib-parser-ex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."ghc-lib-parser-ex" or (errorHandler.buildDepError "ghc-lib-parser-ex"))
          ] ++ (if flags.auto && (compiler.isGhc && compiler.version.ge "9.0.0") && (compiler.isGhc && compiler.version.lt "9.0.1")
            then [
              (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
              (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
              (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
            ]
            else if flags.auto
              then [
                (hsPkgs."ghc-lib-parser" or (errorHandler.buildDepError "ghc-lib-parser"))
              ]
              else if flags.no-ghc-lib
                then [
                  (hsPkgs."ghc" or (errorHandler.buildDepError "ghc"))
                  (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
                  (hsPkgs."ghc-boot" or (errorHandler.buildDepError "ghc-boot"))
                ]
                else [
                  (hsPkgs."ghc-lib-parser" or (errorHandler.buildDepError "ghc-lib-parser"))
                ]);
          buildable = true;
        };
      };
    };
  }