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
      specVersion = "3.0";
      identifier = {
        name = "delivery-status-notification";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "2024 Ben Millwood";
      maintainer = "thebenmachine+git@gmail.com";
      author = "Ben Millwood";
      homepage = "https://github.com/bmillwood/delivery-status-notification";
      url = "";
      synopsis = "Parse bounce messages per RFC3464, RFC3463";
      description = "delivery-status-notification seeks to aid in understanding bounce e-mails. The\nlibrary will be guided by RFC3464 and RFC3463 (and any other relevant RFCs I\nfind), but in practice will prioritise being useful over being correct, since\nDSNs in practice seem to have a reputation for being inconsistent.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "delivery-status-notification-test" = {
          depends = [
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."delivery-status-notification" or (errorHandler.buildDepError "delivery-status-notification"))
          ];
          buildable = true;
        };
      };
    };
  }