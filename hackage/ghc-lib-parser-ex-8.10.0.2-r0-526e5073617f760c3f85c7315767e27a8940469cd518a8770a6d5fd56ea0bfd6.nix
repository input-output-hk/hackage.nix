{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { auto = true; no-ghc-lib = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "ghc-lib-parser-ex"; version = "8.10.0.2"; };
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ] ++ (if flags.auto && (compiler.isGhc && (compiler.version).ge "8.10.0") && (compiler.isGhc && (compiler.version).lt "8.11.0")
          then [
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-boot-th" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot-th"))
            (hsPkgs."ghc-boot" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot"))
            ]
          else if flags.auto
            then [
              (hsPkgs."ghc-lib-parser" or ((hsPkgs.pkgs-errors).buildDepError "ghc-lib-parser"))
              ]
            else if flags.no-ghc-lib
              then [
                (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
                (hsPkgs."ghc-boot-th" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot-th"))
                (hsPkgs."ghc-boot" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot"))
                ]
              else [
                (hsPkgs."ghc-lib-parser" or ((hsPkgs.pkgs-errors).buildDepError "ghc-lib-parser"))
                ]);
        buildable = true;
        };
      tests = {
        "ghc-lib-parser-ex-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
            (hsPkgs."ghc-lib-parser-ex" or ((hsPkgs.pkgs-errors).buildDepError "ghc-lib-parser-ex"))
            ] ++ (if flags.auto && (compiler.isGhc && (compiler.version).ge "8.10.0") && (compiler.isGhc && (compiler.version).lt "8.11.0")
            then [
              (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
              (hsPkgs."ghc-boot-th" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot-th"))
              (hsPkgs."ghc-boot" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot"))
              ]
            else if flags.auto
              then [
                (hsPkgs."ghc-lib-parser" or ((hsPkgs.pkgs-errors).buildDepError "ghc-lib-parser"))
                ]
              else if flags.no-ghc-lib
                then [
                  (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
                  (hsPkgs."ghc-boot-th" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot-th"))
                  (hsPkgs."ghc-boot" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot"))
                  ]
                else [
                  (hsPkgs."ghc-lib-parser" or ((hsPkgs.pkgs-errors).buildDepError "ghc-lib-parser"))
                  ]);
          buildable = true;
          };
        };
      };
    }