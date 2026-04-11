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
    flags = { aeson = true; http-api-data = true; persistent = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "password-instances"; version = "3.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Dennis Gosnell, 2019; Felix Paulusma, 2020";
      maintainer = "cdep.illabout@gmail.com, felix.paulusma@gmail.com";
      author = "Dennis Gosnell, Felix Paulusma";
      homepage = "https://github.com/cdepillabout/password/tree/master/password-instances#readme";
      url = "";
      synopsis = "typeclass instances for password package";
      description = "A library providing typeclass instances for common libraries for the types from the password package.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
      ];
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (flags.aeson) (hsPkgs."password-aeson" or (errorHandler.buildDepError "password-aeson"))) ++ pkgs.lib.optional (flags.http-api-data) (hsPkgs."password-http-api-data" or (errorHandler.buildDepError "password-http-api-data"))) ++ pkgs.lib.optional (flags.persistent) (hsPkgs."password-persistent" or (errorHandler.buildDepError "password-persistent"));
        buildable = true;
      };
    };
  }