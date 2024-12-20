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
    flags = { auto = false; no-ghc-lib = false; };
    package = {
      specVersion = "3.4";
      identifier = { name = "ghc-lib-parser-ex"; version = "9.12.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2020-2024 Shayne Fletcher. All rights reserved.";
      maintainer = "shayne@shaynefletcher.org";
      author = "Shayne Fletcher";
      homepage = "https://github.com/shayne-fletcher/ghc-lib-parser-ex#readme";
      url = "";
      synopsis = "Programming with GHC parse trees";
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
        ] ++ (if flags.auto && (compiler.isGhc && compiler.version.ge "9.12.0") && (compiler.isGhc && compiler.version.lt "9.13.0")
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
      exes = {
        "ghc-lib-parser-ex-build-tool" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          ];
          buildable = true;
        };
      };
      tests = {
        "ghc-lib-parser-ex-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."ghc-lib-parser-ex" or (errorHandler.buildDepError "ghc-lib-parser-ex"))
          ] ++ (if flags.auto && (compiler.isGhc && compiler.version.ge "9.12.0") && (compiler.isGhc && compiler.version.lt "9.13.0")
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