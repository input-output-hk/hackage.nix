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
      specVersion = "1.8";
      identifier = { name = "billeksah-main-static"; version = "1.0.0"; };
      license = "LicenseRef-LGPL";
      copyright = "Juergen \"jutaro\" Nicklisch-Franken";
      maintainer = "maintainer@leksah.org";
      author = "Juergen \"jutaro\" Nicklisch-Franken";
      homepage = "http://www.leksah.org";
      url = "https://github.com/leksah";
      synopsis = "Leksah plugin base";
      description = "Plugin framework used by leksah (static version)";
      buildType = "Simple";
      };
    components = {
      exes = {
        "billeksah-main-static" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."billeksah-services" or (errorHandler.buildDepError "billeksah-services"))
            (hsPkgs."billeksah-forms" or (errorHandler.buildDepError "billeksah-forms"))
            (hsPkgs."billeksah-pane" or (errorHandler.buildDepError "billeksah-pane"))
            (hsPkgs."leksah-main" or (errorHandler.buildDepError "leksah-main"))
            (hsPkgs."leksah-plugin-pane" or (errorHandler.buildDepError "leksah-plugin-pane"))
            (hsPkgs."leksah-dummy" or (errorHandler.buildDepError "leksah-dummy"))
            ];
          buildable = true;
          };
        };
      };
    }