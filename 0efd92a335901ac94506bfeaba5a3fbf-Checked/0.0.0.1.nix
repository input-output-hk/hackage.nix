{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "Checked";
          version = "0.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ronslow@xlegal.co.uk";
        author = "Robert Onslow";
        homepage = "";
        url = "";
        synopsis = "Inbuilt checking for ultra reliable computing";
        description = "";
        buildType = "Simple";
      };
      components = {
        "Checked" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
          ];
        };
      };
    }