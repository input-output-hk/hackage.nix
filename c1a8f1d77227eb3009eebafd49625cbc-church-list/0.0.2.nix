{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "church-list";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "johnw@newartisans.com";
        author = "John Wiegley";
        homepage = "";
        url = "";
        synopsis = "Removed; please see fmlist.";
        description = "Removed; please see fmlist.";
        buildType = "Simple";
      };
      components = {
        "church-list" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }