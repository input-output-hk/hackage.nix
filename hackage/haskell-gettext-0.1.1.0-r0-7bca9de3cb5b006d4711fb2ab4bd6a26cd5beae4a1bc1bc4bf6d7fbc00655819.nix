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
      identifier = { name = "haskell-gettext"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "portnov84@rambler.ru";
      author = "IlyaPortnov";
      homepage = "";
      url = "";
      synopsis = "GetText runtime library implementation in pure Haskell";
      description = "This package is pure Haskell implementation of GetText library runtime.\nIt allows you to:\n\n* Load GNU Gettext binary catalog files (`.mo`, `.gmo`).\n\n* Execute lookups for messages in catalog (gettext and ngettext functions).\n\nSupport for plural form selection expressions is fully implemented.\n\nThis package is however relatively low-level and may be not very nice to\nuse in applications. So it can be used as a backend for some more user-friendly\n\\\"translation framework\\\".\n\nThis package has the following advantages comparing to hgettext:\n\n* It is easier to build it on different platforms, since it has no dependency on\nC code;\n\n* It does not depend on additional C libraries in runtime;\n\n* And probably the most important: this library does not use global process-level\nvariables to store \"current catalog\" (current locale), the catalog should be\nspecified for each call of translation function. So it can be much simpler to\nuse this library for example in web applications.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."bytestring-trie" or (errorHandler.buildDepError "bytestring-trie"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
        ];
        buildable = true;
      };
      exes = {
        "hgettext" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."haskell-src-exts" or (errorHandler.buildDepError "haskell-src-exts"))
            (hsPkgs."uniplate" or (errorHandler.buildDepError "uniplate"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }