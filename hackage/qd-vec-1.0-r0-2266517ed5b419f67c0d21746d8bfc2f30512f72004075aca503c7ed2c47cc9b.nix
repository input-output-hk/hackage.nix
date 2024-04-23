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
      specVersion = "1.2";
      identifier = { name = "qd-vec"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claudiusmaximus@goto10.org";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "Data.Vec.NearZero instances for Numeric.QD types";
      description = "This package provides instances of Vec's NearZero for qd's types.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."qd" or (errorHandler.buildDepError "qd"))
          (hsPkgs."Vec" or (errorHandler.buildDepError "Vec"))
        ];
        buildable = true;
      };
    };
  }