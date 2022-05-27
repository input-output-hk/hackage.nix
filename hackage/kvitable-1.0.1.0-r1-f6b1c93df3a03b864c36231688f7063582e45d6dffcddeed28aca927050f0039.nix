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
      identifier = { name = "kvitable"; version = "1.0.1.0"; };
      license = "ISC";
      copyright = "Kevin Quick, 2021-2022";
      maintainer = "kquick@galois.com";
      author = "Kevin Quick";
      homepage = "https://github.com/kquick/kvitable";
      url = "";
      synopsis = "Key/Value Indexed Table container and formatting library";
      description = "\nAllows creation of a table from a set of of Key+Value Indices.\nThis differs from the standard 'Map' structure in that the 'Map'\nsimply indexes by value but the KVI table indexes by a\nheterogeneous list of keys along with their associated values.\nThis effectively creates an N-dimensional table, where\n@N=Product(Count(Values[key]))@.  The table contents can be sparse.\n\nThis library also provides the ability to format multi-dimensional\ndata in a table presentation.  The table is automatically formatted\nand can be output in a number of different styles (ascii, html,\netc.)\n\nMulti-dimensional data is more difficult to represent than simple\ntwo-dimensional data; this package provides the ability to select\nwhich dimensions should be represented as sub-rows and which\ndimensions should be represented as sub-columns.  See the README\nfor examples";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "test-kvitable" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."html-parse" or (errorHandler.buildDepError "html-parse"))
            (hsPkgs."kvitable" or (errorHandler.buildDepError "kvitable"))
            (hsPkgs."microlens" or (errorHandler.buildDepError "microlens"))
            (hsPkgs."pretty-show" or (errorHandler.buildDepError "pretty-show"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }