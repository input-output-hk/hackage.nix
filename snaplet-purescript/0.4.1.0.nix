{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snaplet-purescript";
          version = "0.4.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "alfredo.dinapoli@gmail.com";
        author = "Alfredo Di Napoli";
        homepage = "";
        url = "";
        synopsis = "Automatic (re)compilation of purescript projects";
        description = "Automatic (re)compilation of purescript projects";
        buildType = "Simple";
      };
      components = {
        snaplet-purescript = {
          depends  = [
            hsPkgs.base
            hsPkgs.snap-core
            hsPkgs.snap
            hsPkgs.raw-strings-qq
            hsPkgs.string-conv
            hsPkgs.text
            hsPkgs.mtl
            hsPkgs.transformers
            hsPkgs.configurator
            hsPkgs.shelly
          ];
        };
      };
    }