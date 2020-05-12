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
      specVersion = "1.2";
      identifier = { name = "iptables-helpers"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "etarasov.ekb@gmail.com";
      author = "Evgeny Tarasov";
      homepage = "";
      url = "";
      synopsis = "Static checking of iptables rules";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }