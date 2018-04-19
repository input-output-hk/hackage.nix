{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "engine-io-snap";
          version = "1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ollie@ocharles.org.uk";
        author = "Oliver Charles";
        homepage = "";
        url = "";
        synopsis = "";
        description = "This package provides an @engine-io@ @ServerAPI@ that is compatible with\n<http://snapframework.com Snap>.";
        buildType = "Simple";
      };
      components = {
        engine-io-snap = {
          depends  = [
            hsPkgs.attoparsec-enumerator
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.engine-io
            hsPkgs.snap-core
            hsPkgs.unordered-containers
            hsPkgs.websockets
            hsPkgs.websockets-snap
          ];
        };
      };
    }