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
      specVersion = "2.4";
      identifier = { name = "fresnel-fused-effects"; version = "0.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Rob Rix";
      maintainer = "rob.rix@me.com";
      author = "Rob Rix";
      homepage = "https://github.com/fresnel/fresnel";
      url = "";
      synopsis = "fresnel/fused-effects integration";
      description = "A handful of operators bridging `fresnel` optics to `fused-effects` effects.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."fresnel" or (errorHandler.buildDepError "fresnel"))
          (hsPkgs."fused-effects" or (errorHandler.buildDepError "fused-effects"))
        ];
        buildable = true;
      };
    };
  }