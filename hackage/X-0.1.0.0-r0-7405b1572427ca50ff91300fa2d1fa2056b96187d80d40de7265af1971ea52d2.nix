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
      specVersion = "2.2";
      identifier = { name = "X"; version = "0.1.0.0"; };
      license = "BSD-3-Clause AND GPL-3.0-or-later";
      copyright = "(c) 2007-2008 Galois Inc.,\n(c) 2019 Herbert Valerio Riedel";
      maintainer = "hvr@gnu.org";
      author = "Galois Inc., Herbert Valerio Riedel";
      homepage = "";
      url = "";
      synopsis = "A light-weight XML library";
      description = "Light-weight XML library derived from the [`xml` package](http://hackage.haskell.org/package/xml)\nfor simple parsing and creation of XML documents.\nIt only depends on @base@, @deepseq@, @bytestring@, @text@, and @text-short@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-short" or (errorHandler.buildDepError "text-short"))
          ];
        buildable = true;
        };
      };
    }