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
    flags = { usepkgconfig = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hydra-hs"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "github@dustlab.com";
      author = "Marcel Ruegenberg";
      homepage = "https://github.com/mruegenberg/hydra-hs";
      url = "";
      synopsis = "Haskell binding to the Sixense SDK for the Razer Hydra";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."hmatrix" or (errorHandler.buildDepError "hmatrix"))
        ];
        libs = pkgs.lib.optional (!flags.usepkgconfig) (pkgs."sixense" or (errorHandler.sysDepError "sixense"));
        pkgconfig = pkgs.lib.optional (flags.usepkgconfig) (pkgconfPkgs."libsixense" or (errorHandler.pkgConfDepError "libsixense"));
        buildable = true;
      };
      tests = {
        "hydra-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hydra-hs" or (errorHandler.buildDepError "hydra-hs"))
          ];
          buildable = true;
        };
      };
    };
  }