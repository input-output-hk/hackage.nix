{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "table-layout";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muesli4@gmail.com";
      author = "Moritz Bruder";
      homepage = "https://github.com/muesli4/table-layout";
      url = "";
      synopsis = "Layout text as grid or table.";
      description = "`table-layout` is a library for text-based table layout, it provides several\nfunctions which help in this task from the ground up, although using them is\nnot necessary. It provides the following layout features:\n\n* Fixed-size and arbitrarily sized columns\n\n* Positional alignment of content\n\n* Alignment of text at a character occurence\n\n* Cut marks show that text has been trimmed\n\n* Building fancy tables with optional headers and user styles\n\n* Layout text justified over multiple rows";
      buildType = "Simple";
    };
    components = {
      "table-layout" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "table-layout-test-styles" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }