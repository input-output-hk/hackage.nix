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
      specVersion = "1.10";
      identifier = { name = "mail-pool"; version = "1.0.1"; };
      license = "MIT";
      copyright = "2019 Jappie Klooster";
      maintainer = "jappieklooster@hotmail.com";
      author = "Jappie Klooster";
      homepage = "https://github.com/jappeace/email-pool#readme";
      url = "";
      synopsis = "Preconfigured email connection pool on top of smtp.";
      description = "Email helper functions with some sane defaults such as a resource pool and cli support";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HaskellNet" or (errorHandler.buildDepError "HaskellNet"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
          ];
        buildable = true;
        };
      exes = {
        "exe" = {
          depends = [
            (hsPkgs."HaskellNet" or (errorHandler.buildDepError "HaskellNet"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mail-pool" or (errorHandler.buildDepError "mail-pool"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."resource-pool" or (errorHandler.buildDepError "resource-pool"))
            ];
          buildable = true;
          };
        };
      };
    }