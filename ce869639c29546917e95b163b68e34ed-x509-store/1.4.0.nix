{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      test = false;
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "x509-store";
          version = "1.4.0";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-certificate";
        url = "";
        synopsis = "X.509 collection accessing and storing methods";
        description = "X.509 collection accessing and storing methods for certificate, crl, exception list";
        buildType = "Simple";
      };
      components = {
        x509-store = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.pem
            hsPkgs.x509
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.time
          ];
        };
      };
    }