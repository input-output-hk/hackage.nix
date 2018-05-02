{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "utf8-validator";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Edward George";
        maintainer = "edwardgeorge@gmail.com";
        author = "Edward George";
        homepage = "https://github.com/edwardgeorge/utf8-validator#readme";
        url = "";
        synopsis = "Constant-space UTF8 validator for ByteStrings";
        description = "Constant-space UTF8 validator for ByteStrings";
        buildType = "Simple";
      };
      components = {
        utf8-validator = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.text
          ];
        };
        tests = {
          utf8-validator-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.text
              hsPkgs.utf8-string
              hsPkgs.utf8-validator
            ];
          };
        };
        benchmarks = {
          utf8-validator-bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.utf8-validator
            ];
          };
        };
      };
    }