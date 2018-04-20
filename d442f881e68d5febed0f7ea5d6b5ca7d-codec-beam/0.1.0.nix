{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9";
        identifier = {
          name = "codec-beam";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "h.kofigumbs@gmail.com";
        author = "";
        homepage = "https://github.com/hkgumbs/codec-beam#readme";
        url = "";
        synopsis = "Erlang VM byte code assembler";
        description = "Erlang VM byte code assembler.";
        buildType = "Simple";
      };
      components = {
        codec-beam = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.zlib
            hsPkgs.text
          ];
        };
        tests = {
          codec-beam-tests = {
            depends  = [
              hsPkgs.codec-beam
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.text
            ];
          };
        };
      };
    }