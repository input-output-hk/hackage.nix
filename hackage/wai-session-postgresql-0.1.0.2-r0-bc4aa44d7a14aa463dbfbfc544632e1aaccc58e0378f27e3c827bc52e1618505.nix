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
      identifier = { name = "wai-session-postgresql"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015 Hans-Christian Esperer";
      maintainer = "Hans-Christian Esperer hc@hcesperer.org";
      author = "Hans-Christian Esperer hc@hcesperer.org";
      homepage = "https://github.com/hce/postgresql-session#readme";
      url = "";
      synopsis = "PostgreSQL backed Wai session store";
      description = "Provides a PostgreSQL backed session store for the Network.Wai.Session interface.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cereal" or (errorHandler.buildDepError "cereal"))
          (hsPkgs."entropy" or (errorHandler.buildDepError "entropy"))
          (hsPkgs."postgresql-simple" or (errorHandler.buildDepError "postgresql-simple"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai-session" or (errorHandler.buildDepError "wai-session"))
        ];
        buildable = true;
      };
      tests = {
        "postgresql-session-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."postgresql-session" or (errorHandler.buildDepError "postgresql-session"))
          ];
          buildable = true;
        };
      };
    };
  }