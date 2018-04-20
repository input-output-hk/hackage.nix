{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "strict-writer";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "2017 Donnacha Oisín Kidney";
        maintainer = "mail@doisinkidney.com";
        author = "Donnacha Oisín Kidney";
        homepage = "https://github.com/oisdk/strict-writer";
        url = "";
        synopsis = "A stricter writer, which uses StateT in order to avoid space leaks.";
        description = "A stricter writer, which uses StateT in order to avoid space leaks.";
        buildType = "Simple";
      };
      components = {
        strict-writer = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }