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
      identifier = { name = "exinst-bytes"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015-2016";
      maintainer = "renzoλcarbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/exinst";
      url = "";
      synopsis = "Derive instances for the `bytes` library for your existential types.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytes" or (errorHandler.buildDepError "bytes"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."exinst" or (errorHandler.buildDepError "exinst"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          ];
        buildable = true;
        };
      };
    }