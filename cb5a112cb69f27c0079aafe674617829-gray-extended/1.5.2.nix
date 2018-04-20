{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "gray-extended";
          version = "1.5.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Amy de Buitléir 2010-2016";
        maintainer = "amy@nualeargais.ie";
        author = "Amy de Buitléir";
        homepage = "https://github.com/mhwombat/gray-extended#readme";
        url = "";
        synopsis = "Gray encoding schemes";
        description = "Gray codes satisfy the property that two successive values\ndiffer in only one digit. Usually the term \\\"Gray code\\\"\nrefers to the Binary Reflected Gray code (BRGC),  but\nnon-binary Gray codes have also been discovered.";
        buildType = "Simple";
      };
      components = {
        gray-extended = {
          depends  = [ hsPkgs.base ];
        };
        tests = {
          gray-extended-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.gray-extended
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }