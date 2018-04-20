{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "semiring-num";
          version = "0.5.0.0";
        };
        license = "MIT";
        copyright = "2016 Donnacha Oisín Kidney";
        maintainer = "mail@doisinkidney.com";
        author = "Donnacha Oisín Kidney";
        homepage = "https://github.com/oisdk/semiring-num";
        url = "";
        synopsis = "Basic semiring class and instances";
        description = "Adds a basic semiring class";
        buildType = "Simple";
      };
      components = {
        semiring-num = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
        tests = {
          semiring-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.semiring-num
              hsPkgs.smallcheck
              hsPkgs.doctest
              hsPkgs.containers
            ];
          };
        };
      };
    }