{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "hopenssl";
          version = "2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2004-2017 Peter Simons";
        maintainer = "Peter Simons <simons@cryp.to>";
        author = "Peter Simons, Markus Rothe";
        homepage = "http://github.com/peti/hopenssl";
        url = "";
        synopsis = "FFI Bindings to OpenSSL's EVP Digest Interface";
        description = "Foreign-function bindings to the\n<http://www.openssl.org/ OpenSSL library>. Currently\nprovides access to the messages digests MD5, DSS, DSS1,\nRIPEMD160, and various SHA variants through the EVP\ndigest interface.";
        buildType = "Custom";
      };
      components = {
        hopenssl = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.crypto ];
        };
        tests = {
          check-low-level-digest-api = {
            depends  = [
              hsPkgs.base
              hsPkgs.hopenssl
              hsPkgs.HUnit
            ];
          };
          check-high-level-digest-api = {
            depends  = [
              hsPkgs.base
              hsPkgs.hopenssl
              hsPkgs.HUnit
            ];
          };
          doctests = {
            depends  = [
              hsPkgs.base
              hsPkgs.hopenssl
              hsPkgs.doctest
            ];
          };
        };
      };
    }