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
    flags = { nix-2_4 = false; };
    package = {
      specVersion = "2.4";
      identifier = { name = "hercules-ci-cnix-expr"; version = "0.2.0.2"; };
      license = "Apache-2.0";
      copyright = "2018-2021 Hercules CI";
      maintainer = "info@hercules-ci.com";
      author = "Hercules CI contributors";
      homepage = "https://docs.hercules-ci.com";
      url = "";
      synopsis = "Bindings for the Nix evaluator";
      description = "";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-pkg-config-version-hook or (pkgs.pkgsBuildBuild.cabal-pkg-config-version-hook or (errorHandler.setupDepError "cabal-pkg-config-version-hook")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."hercules-ci-cnix-store" or (errorHandler.buildDepError "hercules-ci-cnix-store"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."inline-c" or (errorHandler.buildDepError "inline-c"))
          (hsPkgs."inline-c-cpp" or (errorHandler.buildDepError "inline-c-cpp"))
          (hsPkgs."protolude" or (errorHandler.buildDepError "protolude"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
        ];
        libs = [
          (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"))
          (pkgs."boost_context" or (errorHandler.sysDepError "boost_context"))
        ];
        pkgconfig = if flags.nix-2_4
          then [
            (pkgconfPkgs."nix-store" or (errorHandler.pkgConfDepError "nix-store"))
            (pkgconfPkgs."nix-expr" or (errorHandler.pkgConfDepError "nix-expr"))
            (pkgconfPkgs."nix-main" or (errorHandler.pkgConfDepError "nix-main"))
          ]
          else [
            (pkgconfPkgs."nix-store" or (errorHandler.pkgConfDepError "nix-store"))
            (pkgconfPkgs."nix-expr" or (errorHandler.pkgConfDepError "nix-expr"))
            (pkgconfPkgs."nix-main" or (errorHandler.pkgConfDepError "nix-main"))
            (pkgconfPkgs."bdw-gc" or (errorHandler.pkgConfDepError "bdw-gc"))
          ];
        buildable = true;
      };
    };
  }