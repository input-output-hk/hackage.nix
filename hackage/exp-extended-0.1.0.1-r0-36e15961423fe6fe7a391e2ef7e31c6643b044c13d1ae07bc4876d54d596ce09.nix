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
      identifier = { name = "exp-extended"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2015 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "http://code.mathr.co.uk/exp-extended";
      url = "";
      synopsis = "floating point with extended exponent range";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."compensated" or (errorHandler.buildDepError "compensated"))
          (hsPkgs."log-domain" or (errorHandler.buildDepError "log-domain"))
          ];
        buildable = true;
        };
      };
    }