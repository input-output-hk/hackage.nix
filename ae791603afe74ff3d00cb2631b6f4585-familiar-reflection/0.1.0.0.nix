{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "familiar-reflection";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2018 M Farkas-Dyck";
        maintainer = "strake888@gmail.com";
        author = "M Farkas-Dyck";
        homepage = "";
        url = "";
        synopsis = "Reifies arbitrary terms into types that can be reflected back into terms";
        description = "";
        buildType = "Simple";
      };
      components = {
        familiar-reflection = {
          depends  = [ hsPkgs.base ];
        };
      };
    }