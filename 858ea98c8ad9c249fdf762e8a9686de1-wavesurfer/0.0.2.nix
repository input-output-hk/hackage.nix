{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "wavesurfer";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) Stefan Kersten 2008";
        maintainer = "Stefan Kersten";
        author = "Stefan Kersten";
        homepage = "http://code.haskell.org/~StefanKersten/code/wavesurfer";
        url = "";
        synopsis = "Parse WaveSurfer files";
        description = "Parse WaveSurfer files";
        buildType = "Simple";
      };
      components = {
        wavesurfer = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.bytestring-lexing
            hsPkgs.bytestring-show
            hsPkgs.delimited-text
          ];
        };
      };
    }