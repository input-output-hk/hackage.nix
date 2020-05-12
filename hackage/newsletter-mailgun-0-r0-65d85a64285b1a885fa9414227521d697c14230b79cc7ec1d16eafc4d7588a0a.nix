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
      specVersion = "2.2";
      identifier = { name = "newsletter-mailgun"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 davean";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "A mailgun backend for the newsletter package.";
      description = "This package provides a backed to based on\n<mailgun https://hackage.haskell.org/package/mailgun> for\n<newsletter https://hackage.haskell.org/package/newsletter>.\n\nSubscription storage in addition to mailing is deligated to\n<mailgun.com https://www.mailgun.com/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."machines" or (errorHandler.buildDepError "machines"))
          (hsPkgs."mailgun" or (errorHandler.buildDepError "mailgun"))
          (hsPkgs."mime-mail" or (errorHandler.buildDepError "mime-mail"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."newsletter" or (errorHandler.buildDepError "newsletter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }