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
    flags = { test-hlint = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "mellon-gpio"; version = "0.7.0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Drew Hess";
      maintainer = "Drew Hess <src@drewhess.com>";
      author = "Drew Hess <src@drewhess.com>";
      homepage = "https://github.com/dhess/mellon/";
      url = "";
      synopsis = "GPIO support for mellon";
      description = "@mellon-gpio@ provides a GPIO-driven @mellon-core@ @Device@.\nCurrently, it provides support for Linux @sysfs@-based GPIO.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hpio" or (errorHandler.buildDepError "hpio"))
          (hsPkgs."mellon-core" or (errorHandler.buildDepError "mellon-core"))
        ];
        buildable = true;
      };
      tests = {
        "hlint" = {
          depends = pkgs.lib.optionals (!!flags.test-hlint) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = if !flags.test-hlint then false else true;
        };
      };
    };
  }