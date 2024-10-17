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
      identifier = { name = "unconditional-jump"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2024 Mitchell Dalvi Rosen, Travis Staton";
      maintainer = "Mitchell Dalvi Rosen <mitchellwrosen@gmail.com>, Travis Staton <hello@travisstaton.com>";
      author = "Mitchell Dalvi Rosen, Travis Staton";
      homepage = "https://github.com/awkward-squad/unconditional-jump";
      url = "";
      synopsis = "Unconditional jumps";
      description = "Unconditional jumps.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."int-supply" or (errorHandler.buildDepError "int-supply"))
        ];
        buildable = true;
      };
    };
  }