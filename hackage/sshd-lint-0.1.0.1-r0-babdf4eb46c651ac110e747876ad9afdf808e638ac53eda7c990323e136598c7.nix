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
      identifier = { name = "sshd-lint"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "2015 Stack Builders Inc.";
      maintainer = "justin@stackbuilders.com";
      author = "Justin Leitgeb";
      homepage = "";
      url = "";
      synopsis = "Check sshd configuration for adherence to best practices";
      description = "If not configured correctly, it may be easy for attackers\nto gain access to a system. sshd-lint checks the sshd_config file\nfor adherence to best practices.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sshd-lint" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."keyword-args" or (errorHandler.buildDepError "keyword-args"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."nagios-check" or (errorHandler.buildDepError "nagios-check"))
          ];
          buildable = true;
        };
      };
      tests = {
        "sshd-lint-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."keyword-args" or (errorHandler.buildDepError "keyword-args"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."nagios-check" or (errorHandler.buildDepError "nagios-check"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
          ];
          buildable = true;
        };
      };
    };
  }