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
      specVersion = "1.8";
      identifier = { name = "qd-vec"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "";
      url = "";
      synopsis = "'Vec' instances for 'qd' types";
      description = "Instances of Vec's NearZero and Packed for qd's types.";
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