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
      identifier = {
        name = "persistent-instances-iproute";
        version = "0.1.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lanablack@amok.cc";
      author = "Lana Black";
      homepage = "";
      url = "";
      synopsis = "Persistent instances for types in iproute";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          ];
        buildable = true;
        };
      };
    }