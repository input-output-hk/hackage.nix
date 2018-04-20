{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "dpkg";
          version = "0.0.0";
        };
        license = "GPL-3.0-only";
        copyright = "(C) 2011 Clint Adams";
        maintainer = "Clint Adams <clint@debian.org>";
        author = "Clint Adams";
        homepage = "";
        url = "";
        synopsis = "libdpkg bindings";
        description = "Haskell bindings to the libdpkg API";
        buildType = "Simple";
      };
      components = {
        dpkg = {
          depends  = [
            hsPkgs.base
            hsPkgs.bindings-DSL
            hsPkgs.monad-loops
          ];
          pkgconfig = [
            pkgconfPkgs.libdpkg
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.HUnit
              hsPkgs.dpkg
            ];
            libs = [ pkgs.dpkg ];
            pkgconfig = [
              pkgconfPkgs.libdpkg
            ];
          };
        };
      };
    }