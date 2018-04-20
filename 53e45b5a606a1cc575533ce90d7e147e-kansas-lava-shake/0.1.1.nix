{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "kansas-lava-shake";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "(C) 2014 Gergo Erdi";
        maintainer = "Gergo Erdi <gergo@erdi.hu>";
        author = "Gergo Erdi";
        homepage = "";
        url = "";
        synopsis = "Shake rules for building Kansas Lava projects";
        description = "";
        buildType = "Simple";
      };
      components = {
        kansas-lava-shake = {
          depends  = [
            hsPkgs.base
            hsPkgs.kansas-lava
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.shake
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.hastache
          ];
        };
      };
    }