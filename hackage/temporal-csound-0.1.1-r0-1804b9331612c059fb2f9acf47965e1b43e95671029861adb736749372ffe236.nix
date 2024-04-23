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
      specVersion = "1.6";
      identifier = { name = "temporal-csound"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anton.kholomiov@gmail.com";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/temporal-csound";
      url = "";
      synopsis = "brings together temporal-music-notation and csound-expression packages";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."temporal-music-notation" or (errorHandler.buildDepError "temporal-music-notation"))
          (hsPkgs."csound-expression" or (errorHandler.buildDepError "csound-expression"))
        ];
        buildable = true;
      };
    };
  }