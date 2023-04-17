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
      identifier = { name = "xml-conduit-microlens"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015-2023 Fumiaki Kinoshita, 2023 Marco Zocca";
      maintainer = "ocramz";
      author = "Marco Zocca";
      homepage = "https://github.com/ocramz/xml-conduit-microlens";
      url = "";
      synopsis = "Lenses and traversals for xml-conduit based on microlens";
      description = "XML (and HTML) DOM selectors for `xml-conduit` based on `microlens`.\n\nThis library provides combinators for traversing and folding over XML trees.\nIt could be useful for editing trees, adding attributes selectively (e.g. refactoring CSS,\nadding HTMX attributes etc.)\n\nSome definitions are taken from 'xml-lens' but we import 'microlens' to achieve\na smaller dependency footprint.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."microlens-ghc" or (errorHandler.buildDepError "microlens-ghc"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          ];
        buildable = true;
        };
      };
    }