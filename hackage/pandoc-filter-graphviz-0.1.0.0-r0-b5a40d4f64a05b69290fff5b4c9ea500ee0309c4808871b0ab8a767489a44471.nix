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
        name = "pandoc-filter-graphviz";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jean-pierre+git@prunetwork.fr";
      author = "Jean-Pierre PRUNARET";
      homepage = "https://github.com/jpierre03/pandoc-filter-graphviz";
      url = "";
      synopsis = "A Pandoc filter to use graphviz";
      description = "Interpret '~~~ graphviz' bloc as a call to graphviz software and substritude text with produced picture.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "pandoc-filter-graphviz" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.pandoc)
            (hsPkgs.text)
            (hsPkgs.base16-bytestring)
            (hsPkgs.cryptonite)
            (hsPkgs.byteable)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.pandoc-types)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }