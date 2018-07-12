{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "superbuffer";
          version = "0.3.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016 - 2017 Alexander Thiemann <mail@athiemann.net>";
        maintainer = "mail@athiemann.net";
        author = "Alexander Thiemann";
        homepage = "https://github.com/agrafix/superbuffer#readme";
        url = "";
        synopsis = "Efficiently build a bytestring from smaller chunks";
        description = "Efficiently (both fast and memory efficient) build a bytestring from smaller chunks";
        buildType = "Simple";
      };
      components = {
        "superbuffer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          "spec" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.HTF
              hsPkgs.QuickCheck
              hsPkgs.async
              hsPkgs.superbuffer
            ];
          };
        };
        benchmarks = {
          "sbuf-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.superbuffer
              hsPkgs.buffer-builder
              hsPkgs.async
            ];
          };
        };
      };
    }