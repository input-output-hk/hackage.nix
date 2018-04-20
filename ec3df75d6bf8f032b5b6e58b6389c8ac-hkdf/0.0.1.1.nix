{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hkdf";
          version = "0.0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Jiri Marsicek <jiri.marsicek@gmail.com>";
        maintainer = "Jiri Marsicek <jiri.marsicek@gmail.com>";
        author = "Jiri Marsicek <jiri.marsicek@gmail.com>";
        homepage = "http://github.com/j1r1k/hkdf";
        url = "";
        synopsis = "Implementation of HKDF (RFC 5869)";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        hkdf = {
          depends  = [
            hsPkgs.base
            hsPkgs.byteable
            hsPkgs.bytestring
            hsPkgs.cryptohash
          ];
        };
        tests = {
          hkdf-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.byteable
              hsPkgs.bytestring
              hsPkgs.cryptohash
              hsPkgs.hkdf
              hsPkgs.hspec
            ];
          };
        };
      };
    }