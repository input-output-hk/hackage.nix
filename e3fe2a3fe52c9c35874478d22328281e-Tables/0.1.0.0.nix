{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Tables";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "nathanpisarski@gmail.com";
        author = "Nate Pisarski";
        homepage = "";
        url = "";
        synopsis = "A client for Quill databases";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "Tables" = {
            depends  = [
              hsPkgs.base
              hsPkgs.cookbook
            ];
          };
        };
      };
    }