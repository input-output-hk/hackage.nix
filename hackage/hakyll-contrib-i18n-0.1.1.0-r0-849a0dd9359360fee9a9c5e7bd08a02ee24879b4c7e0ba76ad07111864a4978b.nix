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
      identifier = { name = "hakyll-contrib-i18n"; version = "0.1.1.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Copyright © 2020 Pablo COVES <pablo.coves@protonmail.com>\nThis work is free. You can redistribute it and/or modify it under the\nterms of the Do What The Fuck You Want To Public License, Version 2,\nas published by Sam Hocevar. See http://www.wtfpl.net/ for more details.";
      maintainer = "pablo.coves@protonmail.com";
      author = "Pablo COVES";
      homepage = "";
      url = "";
      synopsis = "A Hakyll library for internationalization.";
      description = "This library defines a custom compiler for translations stored in Yaml files.\nOnce loaded, one can implicitly use them to translate strings in the template files.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
        buildable = true;
        };
      exes = {
        "haki18nll" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
            (hsPkgs."hakyll-contrib-i18n" or (errorHandler.buildDepError "hakyll-contrib-i18n"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-include-code" or (errorHandler.buildDepError "pandoc-include-code"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        };
      };
    }