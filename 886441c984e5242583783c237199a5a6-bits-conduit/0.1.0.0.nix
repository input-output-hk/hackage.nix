{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "bits-conduit";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012, Hideyuki Tanaka";
        maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
        author = "Hideyuki Tanaka";
        homepage = "";
        url = "";
        synopsis = "Bitstream support for Conduit";
        description = "Bitstream support for Conduit";
        buildType = "Simple";
      };
      components = {
        bits-conduit = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.conduit
          ];
        };
        tests = {
          bits-conduit-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.bytestring
              hsPkgs.conduit
              hsPkgs.hspec
              hsPkgs.HUnit
              hsPkgs.bits-conduit
            ];
          };
        };
      };
    }