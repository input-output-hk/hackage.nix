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
      identifier = { name = "atmos-dimensional"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "dimensional wrapper on atmos package";
      description = "1976 US Standard Atmosphere with dimensions from dimensional package.\n\nThis is a thin wrapper on top of the atmos package.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."atmos" or (errorHandler.buildDepError "atmos"))
          (hsPkgs."dimensional" or (errorHandler.buildDepError "dimensional"))
        ];
        buildable = true;
      };
    };
  }