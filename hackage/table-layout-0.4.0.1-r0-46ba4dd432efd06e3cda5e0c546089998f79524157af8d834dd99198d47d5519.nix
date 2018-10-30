{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "table-layout";
        version = "0.4.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muesli4@gmail.com";
      author = "Moritz Bruder";
      homepage = "https://github.com/muesli4/table-layout";
      url = "";
      synopsis = "Layout text as grid or table.";
      description = "`table-layout` is a library for text-based table layout, it provides several\nfunctions and types which help in this task from the ground up, although\nusing them is not necessary. It provides the following layout features:\n\n* Fixed-size and arbitrarily sized columns and limiting versions of those\n\n* Positional alignment of content in a column\n\n* Alignment of content within a column at a character occurence\n\n* Cut marks show that content has been trimmed\n\n* Fancy tables with optional headers and user styles\n\n* Justified text layout over multiple rows\n\n/Note:/ This package is currently under development and may not be suited for\nproductive use.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default-class)
        ];
      };
      exes = {
        "table-layout-test-styles" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.data-default-class)
          ];
        };
      };
    };
  }