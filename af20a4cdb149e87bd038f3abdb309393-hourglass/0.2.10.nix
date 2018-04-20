{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hourglass";
          version = "0.2.10";
        };
        license = "BSD-3-Clause";
        copyright = "Vincent Hanquez <vincent@snarc.org>";
        maintainer = "vincent@snarc.org";
        author = "Vincent Hanquez <vincent@snarc.org>";
        homepage = "https://github.com/vincenthz/hs-hourglass";
        url = "";
        synopsis = "simple performant time related library";
        description = "Simple time library focusing on simple but powerful and performant API\n\nThe backbone of the library are the Timeable and Time type classes.\n\nEach Timeable instances can be converted to type that has a Time instances,\nand thus are different representations of current time.";
        buildType = "Simple";
      };
      components = {
        hourglass = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.deepseq
          ] ++ pkgs.lib.optional system.isWindows hsPkgs.Win32;
        };
        tests = {
          test-hourglass = {
            depends  = [
              hsPkgs.base
              hsPkgs.mtl
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.tasty-hunit
              hsPkgs.hourglass
              hsPkgs.deepseq
              hsPkgs.time
              hsPkgs.old-locale
            ];
          };
        };
        benchmarks = {
          bench-hourglass = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.criterion
              hsPkgs.mtl
              hsPkgs.deepseq
              hsPkgs.hourglass
              hsPkgs.time
              hsPkgs.old-locale
            ];
          };
        };
      };
    }