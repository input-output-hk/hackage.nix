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
      identifier = { name = "regex-with-pcre"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan 2016-2017";
      maintainer = "Chris Dornan <chris@regex.uk>";
      author = "Chris Dornan";
      homepage = "http://regex.uk";
      url = "";
      synopsis = "Toolkit for regex-base";
      description = "A regular expression toolkit for regex-base with\ncompile-time checking of RE syntax, data types for\nmatches and captures, a text replacement toolkit,\nportable options, high-level AWK-like tools\nfor building text processing apps, regular expression\nmacros with parsers and test bench, omprehensive\ndocumentation, tutorials and copious examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."regex" or (errorHandler.buildDepError "regex"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."base-compat" or (errorHandler.buildDepError "base-compat"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."regex-base" or (errorHandler.buildDepError "regex-base"))
          (hsPkgs."regex-pcre-builtin" or (errorHandler.buildDepError "regex-pcre-builtin"))
          (hsPkgs."regex-pcre-text" or (errorHandler.buildDepError "regex-pcre-text"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
        ];
        buildable = true;
      };
    };
  }