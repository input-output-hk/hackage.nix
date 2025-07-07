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
    flags = { optimize = true; };
    package = {
      specVersion = "3.0";
      identifier = { name = "hquantlib-time"; version = "0.1.2"; };
      license = "LGPL-3.0-or-later";
      copyright = "";
      maintainer = "Pavel Ryzhov <pavel.ryzhov@gmail.com>";
      author = "Pavel Ryzhov";
      homepage = "http://github.com/paulrzcz/hquantlib-time.git";
      url = "";
      synopsis = "HQuantLib Time is a business calendar functions extracted from HQuantLib";
      description = "HQuantLib is intended to be a functional style port of QuantLib (http://quantlib.org)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
        ];
        buildable = true;
      };
    };
  }