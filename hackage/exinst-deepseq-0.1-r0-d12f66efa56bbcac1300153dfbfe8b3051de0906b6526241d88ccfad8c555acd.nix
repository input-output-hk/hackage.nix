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
      specVersion = "1.18";
      identifier = { name = "exinst-deepseq"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Derive instances for the `deepseq` library for your existential types.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."exinst" or (errorHandler.buildDepError "exinst"))
          ];
        buildable = true;
        };
      };
    }