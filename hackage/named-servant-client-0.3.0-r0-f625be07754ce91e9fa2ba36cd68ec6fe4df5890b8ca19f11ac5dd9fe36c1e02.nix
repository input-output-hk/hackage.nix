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
      specVersion = "1.12";
      identifier = { name = "named-servant-client"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen 2020";
      maintainer = "kristof@resonata.be";
      author = "";
      homepage = "";
      url = "";
      synopsis = "client support for named-servant";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client-core" or (errorHandler.buildDepError "servant-client-core"))
          (hsPkgs."named-servant" or (errorHandler.buildDepError "named-servant"))
          (hsPkgs."named" or (errorHandler.buildDepError "named"))
          ];
        buildable = true;
        };
      };
    }