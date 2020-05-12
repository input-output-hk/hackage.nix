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
      identifier = { name = "invertible-hxt"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2017";
      maintainer = "dylan@dylex.net";
      author = "Dylan Simon";
      homepage = "";
      url = "";
      synopsis = "invertible transformer instances for HXT Picklers";
      description = "Provides alternative syntax for HXT's Picklers (XML parser/generators) based on generic invertible Monoidal";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."hxt" or (errorHandler.buildDepError "hxt"))
          (hsPkgs."hxt-charproperties" or (errorHandler.buildDepError "hxt-charproperties"))
          (hsPkgs."invertible" or (errorHandler.buildDepError "invertible"))
          ];
        buildable = true;
        };
      };
    }