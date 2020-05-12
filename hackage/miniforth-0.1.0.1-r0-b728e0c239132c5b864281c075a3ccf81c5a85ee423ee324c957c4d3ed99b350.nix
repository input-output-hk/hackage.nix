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
      specVersion = "1.10";
      identifier = { name = "miniforth"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "tenorbiel@gmail.com";
      author = "Tenor Biel";
      homepage = "";
      url = "";
      synopsis = "Miniature FORTH-like interpreter";
      description = "Miniature FORTH-like interpreter for muno";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl-compat" or (errorHandler.buildDepError "mtl-compat"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."parsec3-numbers" or (errorHandler.buildDepError "parsec3-numbers"))
          (hsPkgs."MonadRandom" or (errorHandler.buildDepError "MonadRandom"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "miniforth" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."readline" or (errorHandler.buildDepError "readline"))
            (hsPkgs."miniforth" or (errorHandler.buildDepError "miniforth"))
            ];
          buildable = true;
          };
        };
      };
    }