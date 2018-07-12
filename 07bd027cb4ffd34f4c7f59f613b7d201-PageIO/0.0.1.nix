{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "PageIO";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2008 Audrey Tang";
        maintainer = "Audrey Tang <audreyt@audreyt.org>";
        author = "Audrey Tang <audreyt@audreyt.org>";
        homepage = "";
        url = "";
        synopsis = "Page-oriented extraction and composition library";
        description = "Provides an interface to the PageIn export format (.dux)\nfrom the StreamServe Persuasion(tm) platform, using it\nboth as a data extraction as well as a page layout DSL.\n(Extremely experimental, no documentations at the moment!)";
        buildType = "Simple";
      };
      components = {
        "PageIO" = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.parsec
            hsPkgs.containers
            hsPkgs.stringtable-atom
            hsPkgs.iconv
          ];
        };
      };
    }