{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "repa-flow";
          version = "4.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "The Repa Development Team";
        homepage = "http://repa.ouroborus.net";
        url = "";
        synopsis = "Data-parallel data flows.";
        description = "Data-parallel data flows.";
        buildType = "Simple";
      };
      components = {
        repa-flow = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.primitive
            hsPkgs.containers
            hsPkgs.hashtables
            hsPkgs.text
            hsPkgs.repa-eval
            hsPkgs.repa-stream
            hsPkgs.repa-scalar
            hsPkgs.repa-convert
            hsPkgs.repa-array
          ];
        };
      };
    }