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
      identifier = { name = "lucid-htmx"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2021 Wavi Labs LLC";
      maintainer = "rashad@wavilabs.com";
      author = "Wavi Labs LLC";
      homepage = "https://github.com/WaviLabs/lucid-htmx#readme";
      url = "";
      synopsis = "Use htmx in your lucid templates";
      description = "Please see the README on GitHub at <https://github.com/WaviLabs/lucid-htmx#readme>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "lucid-htmx-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."lucid-htmx" or (errorHandler.buildDepError "lucid-htmx"))
            (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }