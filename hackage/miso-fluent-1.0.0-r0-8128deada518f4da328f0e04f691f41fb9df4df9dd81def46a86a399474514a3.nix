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
      specVersion = "3.0";
      identifier = { name = "miso-fluent"; version = "1.0.0"; };
      license = "EUPL-1.2";
      copyright = "";
      maintainer = "IDA";
      author = "IDA";
      homepage = "https://digital-autonomy.institute";
      url = "";
      synopsis = "Translate miso apps with Project Fluent";
      description = "In-browser <https://projectfluent.org Project Fluent> localisation backed by\n<https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Intl Intl>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."fluent" or (errorHandler.buildDepError "fluent"))
          (hsPkgs."fluent-syntax" or (errorHandler.buildDepError "fluent-syntax"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "miso-fluent-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."miso" or (errorHandler.buildDepError "miso"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."miso-fluent" or (errorHandler.buildDepError "miso-fluent"))
          ];
          buildable = true;
        };
      };
    };
  }