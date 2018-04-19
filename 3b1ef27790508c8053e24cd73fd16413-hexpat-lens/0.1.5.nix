{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hexpat-lens";
          version = "0.1.5";
        };
        license = "MIT";
        copyright = "(c) 2013, Joseph Abrahamson";
        maintainer = "me@jspha.com";
        author = "Joseph Abrahamson";
        homepage = "https://github.com/tel/hexpat-lens";
        url = "";
        synopsis = "Lenses for Hexpat.";
        description = "A set of lenses for inspecting and manipulating Hexpat data structures.";
        buildType = "Simple";
      };
      components = {
        hexpat-lens = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.bytestring
            hsPkgs.hexpat
            hsPkgs.lens
            hsPkgs.hexpat-tagsoup
          ];
        };
      };
    }