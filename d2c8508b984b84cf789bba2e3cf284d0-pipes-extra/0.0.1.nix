{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "pipes-extra";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "p.capriotti@gmail.com";
        author = "Paolo Capriotti";
        homepage = "https://github.com/pcapriotti/pipes-extra";
        url = "";
        synopsis = "Various basic utilities for Pipes.";
        description = "This module contains basic utilities for Pipes to deal with files and chunked binary data, as well as extra combinators like 'zip' and 'tee'.";
        buildType = "Simple";
      };
      components = {
        pipes-extra = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.pipes-core
            hsPkgs.bytestring
          ];
        };
      };
    }