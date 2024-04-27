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
      specVersion = "3.4";
      identifier = { name = "dani-servant-lucid2"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "Daniel Díaz";
      homepage = "https://github.com/danidiaz/dani-servant-lucid2";
      url = "";
      synopsis = "Servant support for lucid2";
      description = "Servant support for lucid2.\n\n'HTML' content type backed by the `ToHtml` typeclass.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
          (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
        ];
        buildable = true;
      };
      sublibs = {
        "server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          ];
          buildable = true;
        };
      };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."http-media" or (errorHandler.buildDepError "http-media"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."lucid2" or (errorHandler.buildDepError "lucid2"))
            (hsPkgs."dani-servant-lucid2" or (errorHandler.buildDepError "dani-servant-lucid2"))
            (hsPkgs."dani-servant-lucid2".components.sublibs.server or (errorHandler.buildDepError "dani-servant-lucid2:server"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          ];
          buildable = true;
        };
      };
    };
  }