{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "base32-bytestring";
          version = "0.2.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013, Sam Truzjan";
        maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
        author = "Sam Truzjan";
        homepage = "https://github.com/pxqr/base32-bytestring";
        url = "";
        synopsis = "Fast base32 and base32hex codec for ByteStrings";
        description = "base32 and base32hex codec according to RFC4648\n<http://tools.ietf.org/html/rfc4648>\n\nThe package API is similar to base64-bytestring.";
        buildType = "Simple";
      };
      components = {
        base32-bytestring = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cpu
            hsPkgs.bits-extras
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.base32-bytestring
              hsPkgs.bytestring
              hsPkgs.hspec
              hsPkgs.QuickCheck
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.base32-bytestring
              hsPkgs.bytestring
              hsPkgs.criterion
            ];
          };
        };
      };
    }