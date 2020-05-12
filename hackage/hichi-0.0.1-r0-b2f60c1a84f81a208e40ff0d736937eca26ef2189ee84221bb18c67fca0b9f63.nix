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
    flags = { test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "hichi"; version = "0.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Sergei Trofimovich <slyfox@inbox.ru>";
      author = "Sergei Trofimovich <slyfox@inbox.ru>";
      homepage = "";
      url = "";
      synopsis = "haskell robot for IChat protocol";
      description = "haskell robot for IChat protocol";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hichi" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            ];
          buildable = true;
          };
        "test-rc4" = { buildable = if flags.test then true else false; };
        };
      };
    }