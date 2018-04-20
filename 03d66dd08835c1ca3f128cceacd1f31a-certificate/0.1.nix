{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      executable = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "certificate";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "Vincent Hanquez <vincent@snarc.org>";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "";
        url = "";
        synopsis = "Certificate and Key Reader/Writer";
        description = "Certificate and Key reader/writer";
        buildType = "Simple";
      };
      components = {
        certificate = {
          depends  = [
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.asn1-data
            hsPkgs.base64-bytestring
          ];
        };
        exes = {
          certificate = {
            depends  = pkgs.lib.optionals _flags.executable [
              hsPkgs.RSA
              hsPkgs.hexdump
              hsPkgs.haskell98
            ];
          };
        };
      };
    }