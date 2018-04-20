{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "wai-route";
          version = "0.1.0";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "2014 Roman S. Borschel";
        maintainer = "Roman S. Borschel <roman@pkaboo.org>";
        author = "Roman S. Borschel";
        homepage = "";
        url = "";
        synopsis = "Minimalistic, efficient routing for WAI";
        description = "\nSimple routing for applications using the WAI, based on an\nefficient tree structure. Routes are defined as string literals\nand path segments prefixed with a ':' indicate captures.\n\nA sample is available at: <https://github.com/romanb/wai-route/blob/master/sample/Main.hs>.";
        buildType = "Simple";
      };
      components = {
        wai-route = {
          depends  = [
            hsPkgs.base
            hsPkgs.wai
            hsPkgs.unordered-containers
            hsPkgs.text
            hsPkgs.http-types
            hsPkgs.bytestring
          ];
        };
        exes = {
          wai-route-sample = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.http-types
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.wai-route
              hsPkgs.warp
            ];
          };
          wai-route-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.http-types
              hsPkgs.mtl
              hsPkgs.QuickCheck
              hsPkgs.tasty
              hsPkgs.tasty-quickcheck
              hsPkgs.text
              hsPkgs.wai
              hsPkgs.wai-route
            ];
          };
        };
      };
    }