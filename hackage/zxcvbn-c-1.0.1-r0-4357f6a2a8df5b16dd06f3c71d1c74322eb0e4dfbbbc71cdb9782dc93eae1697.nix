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
    flags = { use-shared-lib = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "zxcvbn-c"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Joey Hess, 2015 Tony Evans";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess";
      homepage = "";
      url = "";
      synopsis = "Password strength estimation";
      description = "This is a Haskell binding to the C port of the zxcvbn\npassword strength estimator, from <https://github.com/tsyrogit/zxcvbn-c>\n\nAn article on the reasons for zxcvbn is at\n<https://tech.dropox.com/2012/04/zxcvbn-realistic-password-strength-estimation>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = (pkgs.lib).optional (flags.use-shared-lib) (pkgs."zxcvbn" or (errorHandler.sysDepError "zxcvbn"));
        buildable = true;
        };
      };
    }