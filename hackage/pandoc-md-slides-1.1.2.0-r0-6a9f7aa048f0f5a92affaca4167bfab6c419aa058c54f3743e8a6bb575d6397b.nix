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
      identifier = { name = "pandoc-md-slides"; version = "1.1.2.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "bbadoodles@gmail.com";
      author = "Rubelito Abella";
      homepage = "";
      url = "";
      synopsis = "A pandoc filter to convert markdown notes to markdown slides";
      description = "A pandoc filter to convert markdown notes to markdown slides. Splits long slides and resolves image target paths";
      buildType = "Simple";
    };
    components = {
      exes = {
        "md-slides" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."pcre2" or (errorHandler.buildDepError "pcre2"))
            (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-io" or (errorHandler.buildDepError "path-io"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."yaml" or (errorHandler.buildDepError "yaml"))
          ];
          buildable = true;
        };
        "remarkjs" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
          buildable = true;
        };
      };
    };
  }