{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "global-config";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Alexander Dorofeev <aka.spin@gmail.com>";
        author = "Alexander Dorofeev <aka.spin@gmail.com>spin";
        homepage = "https://github.com/akaspin/global-config";
        url = "";
        synopsis = "Global mutable configuration";
        description = "@Data.Global.Config@ provides brain-free pattern to work with global\nconfigurations. Use wisely.";
        buildType = "Simple";
      };
      components = {
        "global-config" = {
          depends  = [
            hsPkgs.base
            hsPkgs.global-variables
            hsPkgs.data-default
          ];
        };
        tests = {
          "test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.QuickCheck
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-hunit
              hsPkgs.global-config
              hsPkgs.transformers
              hsPkgs.bytestring
              hsPkgs.data-default
            ];
          };
        };
      };
    }