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
      identifier = { name = "table-layout"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muesli4@gmail.com";
      author = "Moritz Bruder";
      homepage = "https://github.com/muesli4/table-layout";
      url = "";
      synopsis = "Layout text as grid or table.";
      description = "`table-layout` is a library for text-based table layout, it provides several\nfunctions which help in this task from the ground up, although using them is\nnot necessary. It provides the following layout features:\n\n* Fixed-size and arbitrarily sized columns and limiting versions of those\n\n* Positional alignment of content in a column\n\n* Alignment of content within a column at a character occurence\n\n* Cut marks show that content has been trimmed\n\n* Fancy tables with optional headers and user styles\n\n* Justified text layout over multiple rows";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      exes = {
        "table-layout-test-styles" = {
          depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }