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
    flags = { ip4r = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "persistent-iproute"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lanablack@amok.cc";
      author = "Lana Black";
      homepage = "https://github.com/greydot/persistent-iproute";
      url = "";
      synopsis = "Persistent instances for types in iproute";
      description = "Persistent instances and operators for types in iproute to use with PostgreSQL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-iproute" or (errorHandler.buildDepError "aeson-iproute"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."http-api-data" or (errorHandler.buildDepError "http-api-data"))
          (hsPkgs."path-pieces" or (errorHandler.buildDepError "path-pieces"))
          (hsPkgs."persistent" or (errorHandler.buildDepError "persistent"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }