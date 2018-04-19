{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "x509-system";
          version = "1.6.5";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "http://github.com/vincenthz/hs-certificate";
        url = "";
        synopsis = "Handle per-operating-system X.509 accessors and storage";
        description = "System X.509 handling";
        buildType = "Simple";
      };
      components = {
        x509-system = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.pem
            hsPkgs.x509
            hsPkgs.x509-store
          ] ++ pkgs.lib.optionals system.isWindows [
            hsPkgs.Win32
            hsPkgs.asn1-encoding
          ];
          libs = pkgs.lib.optional system.isWindows pkgs.Crypt32;
        };
      };
    }