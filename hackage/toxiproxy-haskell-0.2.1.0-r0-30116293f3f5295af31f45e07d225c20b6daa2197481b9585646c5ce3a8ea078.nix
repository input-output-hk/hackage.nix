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
      identifier = { name = "toxiproxy-haskell"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Jake Pittis";
      maintainer = "jakepittis@gmail.com";
      author = "Jake Pittis";
      homepage = "https://github.com/jpittis/toxiproxy-haskell#readme";
      url = "";
      synopsis = "Client library for Toxiproxy: a TCP failure testing proxy.";
      description = "Please see the README on Github at <https://github.com/jpittis/toxiproxy-haskell#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "toxiproxy-haskell-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."servant-client" or (errorHandler.buildDepError "servant-client"))
            (hsPkgs."silently" or (errorHandler.buildDepError "silently"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."toxiproxy-haskell" or (errorHandler.buildDepError "toxiproxy-haskell"))
          ];
          buildable = true;
        };
      };
    };
  }