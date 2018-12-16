{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      inlinemarkdown = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "pandoc-placetable";
        version = "0.1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2015 Mauro Bieg";
      maintainer = "Mauro Bieg";
      author = "Mauro Bieg";
      homepage = "https://github.com/mb21/pandoc-placetable";
      url = "";
      synopsis = "Pandoc filter to include CSV files";
      description = "A Pandoc filter that replaces code blocks (that have the class `table`)\nwith tables generated from CSV. The CSV is read from the code block\nand from an optional external CSV file and concatenated. There's a flag\nto enable parsing of inline markdown.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pandoc-placetable" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.spreadsheet)
            (hsPkgs.explicit-exception)
            (hsPkgs.pandoc-types)
          ] ++ pkgs.lib.optional (flags.inlinemarkdown) (hsPkgs.pandoc);
        };
      };
    };
  }