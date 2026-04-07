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
      specVersion = "1.12";
      identifier = { name = "password-aeson"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Dennis Gosnell, 2019; Felix Paulusma, 2020";
      maintainer = "cdep.illabout@gmail.com, felix.paulusma@gmail.com";
      author = "Dennis Gosnell, Felix Paulusma";
      homepage = "https://github.com/cdepillabout/password/tree/master/password-aeson#readme";
      url = "";
      synopsis = "aeson typeclass instances for password package";
      description = "A library providing typeclass instances for aeson for the types from the password package.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.cabal-doctest or (pkgs.pkgsBuildBuild.cabal-doctest or (errorHandler.setupDepError "cabal-doctest")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."password-types" or (errorHandler.buildDepError "password-types"))
        ];
        buildable = true;
      };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."password" or (errorHandler.buildDepError "password"))
          ];
          buildable = true;
        };
        "password-aeson-tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."password-aeson" or (errorHandler.buildDepError "password-aeson"))
            (hsPkgs."password-types" or (errorHandler.buildDepError "password-types"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }