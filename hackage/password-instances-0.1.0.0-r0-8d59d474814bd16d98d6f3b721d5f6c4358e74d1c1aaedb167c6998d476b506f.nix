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
      identifier = { name = "password-instances"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2019 Dennis Gosnell";
      maintainer = "cdep.illabout@gmail.com";
      author = "Dennis Gosnell";
      homepage = "https://github.com/cdepillabout/password/password-instances#readme";
      url = "";
      synopsis = "typeclass instances for password package";
      description = "A library providing typeclass instances for common libraries for the types from the password package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."password" or (errorHandler.buildDepError "password"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          ];
        buildable = true;
        };
      tests = {
        "password-instances-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            ];
          buildable = true;
          };
        "password-instances-tasty" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."password-instances" or (errorHandler.buildDepError "password-instances"))
            ];
          buildable = true;
          };
        };
      };
    }