{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hwsl2-reducers";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "srijs@airpost.net";
        author = "Sam Rijs";
        homepage = "https://github.com/srijs/hwsl2-reducers";
        url = "";
        synopsis = "Semigroup and Reducer instances for Data.Hash.SL2";
        description = "";
        buildType = "Simple";
      };
      components = {
        hwsl2-reducers = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.hwsl2
            hsPkgs.semigroups
            hsPkgs.reducers
          ];
        };
      };
    }