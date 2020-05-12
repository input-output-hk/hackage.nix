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
      identifier = { name = "prettyprinter-compat-wl-pprint"; version = "1"; };
      license = "BSD-2-Clause";
      copyright = "";
      maintainer = "David Luposchainsky <dluposchainsky at google>";
      author = "Daan Leijen, Noam Lewis, David Luposchainsky";
      homepage = "http://github.com/quchen/prettyprinter";
      url = "";
      synopsis = "Prettyprinter compatibility module for previous users of the wl-pprint package.";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          ];
        buildable = true;
        };
      };
    }