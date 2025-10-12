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
      identifier = { name = "shortcut-links"; version = "0.5.2.0"; };
      license = "MPL-2.0";
      copyright = "2015–2019 Aelve (BSD-3-Clause)\n2019-2025 Kowainik";
      maintainer = "Kowainik <xrom.xkov@gmail.com>";
      author = "Artyom";
      homepage = "http://github.com/kowainik/shortcut-links";
      url = "";
      synopsis = "Link shortcuts for use in text markup";
      description = "This package is a database of link shortcuts. A Markdown example:\n@\\[Google\\](\\@w)@ turns into <http://en.wikipedia.org/wiki/Google>.\n.\nSee the \"ShortcutLinks.All\" module for a full list of shortcuts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
        ];
        buildable = true;
      };
      tests = {
        "shortcut-links-doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }