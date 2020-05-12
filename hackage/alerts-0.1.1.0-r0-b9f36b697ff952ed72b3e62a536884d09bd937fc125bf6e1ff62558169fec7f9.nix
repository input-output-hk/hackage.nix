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
      identifier = { name = "alerts"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Daniel Campoverde";
      maintainer = "alx@sillybytes.net";
      author = "Daniel Campoverde";
      homepage = "https://github.com/alx741/alerts#readme";
      url = "";
      synopsis = "Alert messages for web applications";
      description = "Alert messages for web applications:\n\n* Bootstrap 3\n\n* Bootstrap 4\n\n* Foundation 5\n\n* Bulma";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          ];
        buildable = true;
        };
      };
    }