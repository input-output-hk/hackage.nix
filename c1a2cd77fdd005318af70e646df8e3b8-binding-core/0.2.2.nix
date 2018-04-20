{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.9.2";
        identifier = {
          name = "binding-core";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "code@accursoft.org";
        author = "Gideon Sireling";
        homepage = "https://bitbucket.org/accursoft/binding";
        url = "";
        synopsis = "Data Binding";
        description = "Bind mutable data and lists to IO objects.\nWrappers for binding to graphical widgets are provided by binding-gtk and binding-wx.";
        buildType = "Simple";
      };
      components = {
        binding-core = {
          depends  = [
            hsPkgs.base
            hsPkgs.stm
          ];
        };
        tests = {
          HTF = {
            depends  = [
              hsPkgs.base
              hsPkgs.binding-core
              hsPkgs.random
              hsPkgs.HTF
              hsPkgs.HUnit
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }