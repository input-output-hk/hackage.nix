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
      identifier = { name = "ip-quoter"; version = "1.0.1.0"; };
      license = "MIT";
      copyright = "(c) 2015 Shea Levy";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/shlevy/ip-quoter";
      url = "";
      synopsis = "Quasiquoter for IP addresses";
      description = "A quasiquoter for IP address literals – That is, IPv4 decimal-dotted or IPv6\ncolon-separated notation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."cpu" or (errorHandler.buildDepError "cpu"))
            (hsPkgs."ip-quoter" or (errorHandler.buildDepError "ip-quoter"))
          ];
          buildable = true;
        };
      };
    };
  }