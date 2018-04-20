{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "engine-io-growler";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@iankduncan.com";
        author = "Ian Duncan";
        homepage = "http://github.com/iand675/growler";
        url = "";
        synopsis = "";
        description = "This package provides an @engine-io@ @ServerAPI@ that is compatible with\n<http://http://hackage.haskell.org/package/growler Growler>. It also provides a few helper utilities for setting up @socket-io@";
        buildType = "Simple";
      };
      components = {
        engine-io-growler = {
          depends  = [
            hsPkgs.base
            hsPkgs.growler
            hsPkgs.wai
            hsPkgs.engine-io
            hsPkgs.socket-io
            hsPkgs.websockets
            hsPkgs.wai-websockets
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.unordered-containers
            hsPkgs.mtl
            hsPkgs.pipes
            hsPkgs.pipes-attoparsec
            hsPkgs.pipes-wai
            hsPkgs.transformers
            hsPkgs.http-types
          ];
        };
      };
    }