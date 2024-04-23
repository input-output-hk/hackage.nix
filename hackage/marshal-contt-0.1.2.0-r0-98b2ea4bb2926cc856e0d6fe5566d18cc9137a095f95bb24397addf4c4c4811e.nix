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
      specVersion = "1.24";
      identifier = { name = "marshal-contt"; version = "0.1.2.0"; };
      license = "MPL-2.0";
      copyright = "(c) 2019 Alexis Williams";
      maintainer = "alexis@typedr.at";
      author = "Alexis Williams";
      homepage = "https://github.com/typedrat/marshal-contt";
      url = "";
      synopsis = "A ContT-based wrapper for Haskell-to-C marshalling functions.";
      description = "See <https://github.com/typedrat/marshal-contt/blob/master/README.md>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
        ];
        buildable = true;
      };
    };
  }