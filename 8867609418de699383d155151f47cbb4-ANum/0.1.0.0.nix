{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ANum";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Dan Burton 2013";
        maintainer = "dan.burton@originate.com";
        author = "Dan Burton";
        homepage = "https://github.com/DanBurton/ANum#readme";
        url = "";
        synopsis = "Num instance for Applicatives provided via the ANum newtype";
        description = "";
        buildType = "Simple";
      };
      components = {
        ANum = {
          depends  = [ hsPkgs.base ];
        };
      };
    }