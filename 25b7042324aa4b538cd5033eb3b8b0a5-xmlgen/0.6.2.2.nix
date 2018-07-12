{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "xmlgen";
          version = "0.6.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Stefan Wehr <wehr@factisresearch.com>";
        author = "Stefan Wehr, Stefan Schmidt, Johannes Weiss, David Leuschner";
        homepage = "";
        url = "";
        synopsis = "Fast XML generation library";
        description = "Library for high-performance XML generation.";
        buildType = "Simple";
      };
      components = {
        "xmlgen" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.mtl
            hsPkgs.text
          ];
        };
        tests = {
          "xmlgen-tests" = {
            depends  = [
              hsPkgs.base
              hsPkgs.xmlgen
              hsPkgs.text
              hsPkgs.containers
              hsPkgs.hxt
              hsPkgs.bytestring
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
          };
        };
        benchmarks = {
          "xmlgen-bench" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.criterion
              hsPkgs.bytestring
              hsPkgs.xmlgen
            ];
          };
        };
      };
    }