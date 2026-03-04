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
      identifier = { name = "gb-vector"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "devon.tomlin@novavero.ai";
      author = "Devon Tomlin";
      homepage = "https://github.com/Gondola-Bros-Entertainment/gb-vector";
      url = "";
      synopsis = "Pure Haskell SVG generation";
      description = "A pure Haskell library for generating SVG.\nComposable @Element@ tree — style and transforms are constructors\nthat wrap children. No XML library, no IO, just pure functions\nbuilding @Text@. Dependencies: @base@ + @text@ only.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "gb-vector-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."gb-vector" or (errorHandler.buildDepError "gb-vector"))
          ];
          buildable = true;
        };
      };
    };
  }