{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "acme-colosson";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Determines whether it is numberwang.";
        description = "Yes, that is a number!";
        buildType = "Simple";
      };
      components = {
        acme-colosson = {
          depends  = [
            hsPkgs.base
            hsPkgs.random
          ];
        };
      };
    }