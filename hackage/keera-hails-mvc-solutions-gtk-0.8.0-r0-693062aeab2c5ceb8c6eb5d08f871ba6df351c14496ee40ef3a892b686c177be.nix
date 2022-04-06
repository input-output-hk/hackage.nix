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
    flags = { test-hlint = false; test-doc-coverage = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "keera-hails-mvc-solutions-gtk";
        version = "0.8.0";
        };
      license = "BSD-3-Clause";
      copyright = "(C) 2013 Keera Studios Ltd";
      maintainer = "support@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.co.uk/blog/community/";
      url = "";
      synopsis = "Haskell on Gtk rails - Solutions to recurrent problems in Gtk applications";
      description = "Keera Hails is a rapid application development system.\n\nThe idea behind Hails is that you should be able to build cross platform\napplications with minimal effort, very quickly, and the result should be easy\nto maintain.\n\nLarge Hails applications are structured following an optimized MVC\narchitecture. Values are updated either from the view to the model, or from\nthe model to the view. Internally, rules use a notion of direction in the\nupdate to determine how different components must be updated.\n\nThis library provides standard solutions to common synchronization needs\nfound in Gtk3 applications.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."gtk" or (errorHandler.buildDepError "gtk"))
          (hsPkgs."hslogger" or (errorHandler.buildDepError "hslogger"))
          (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."network-uri" or (errorHandler.buildDepError "network-uri"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."keera-hails-mvc-environment-gtk" or (errorHandler.buildDepError "keera-hails-mvc-environment-gtk"))
          (hsPkgs."keera-hails-mvc-view" or (errorHandler.buildDepError "keera-hails-mvc-view"))
          (hsPkgs."keera-hails-mvc-view-gtk" or (errorHandler.buildDepError "keera-hails-mvc-view-gtk"))
          (hsPkgs."keera-hails-mvc-model-protectedmodel" or (errorHandler.buildDepError "keera-hails-mvc-model-protectedmodel"))
          (hsPkgs."keera-hails-reactivevalues" or (errorHandler.buildDepError "keera-hails-reactivevalues"))
          (hsPkgs."MissingK" or (errorHandler.buildDepError "MissingK"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            ];
          buildable = if !flags.test-doc-coverage then false else true;
          };
        };
      };
    }