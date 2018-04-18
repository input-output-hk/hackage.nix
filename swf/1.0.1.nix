{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "swf";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jeremy Shaw";
        author = "Jeremy Shaw";
        homepage = "http://www.n-heptane.com/nhlab";
        url = "";
        synopsis = "A library for creating Shockwave Flash (SWF) files";
        description = "Provides Haskell datatypes which closely reflect the\ninternal specification of SWF, and routines to convert the data\nvalues into a valid .swf file. Currently the assembly language\nportion is best supported, with many other features missing, such as\nimages, sounds, and much more.";
        buildType = "Simple";
      };
      components = {
        swf = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.pretty
          ];
        };
      };
    }