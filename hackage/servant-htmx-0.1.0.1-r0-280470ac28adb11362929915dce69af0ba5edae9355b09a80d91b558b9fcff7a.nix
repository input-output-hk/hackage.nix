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
      identifier = { name = "servant-htmx"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2022 Monadic Systems LLC";
      maintainer = "tech@monadic.systems";
      author = "Monadic Systems LLC";
      homepage = "https://github.com/MonadicSystems/servant-htmx#readme";
      url = "";
      synopsis = "A library for using htmx with servant";
      description = "Please see the README on GitHub at <https://github.com/MonadicSystems/servant-htmx#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      exes = {
        "servant-htmx-exe" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-htmx" or (errorHandler.buildDepError "servant-htmx"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
      tests = {
        "servant-htmx-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."servant-htmx" or (errorHandler.buildDepError "servant-htmx"))
            (hsPkgs."servant-server" or (errorHandler.buildDepError "servant-server"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }