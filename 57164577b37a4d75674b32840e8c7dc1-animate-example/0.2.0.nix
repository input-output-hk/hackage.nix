{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "animate-example";
          version = "0.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Joe Vargas";
        author = "";
        homepage = "https://github.com/jxv/animate#readme";
        url = "";
        synopsis = "Animation for sprites";
        description = "Prototypical sprite animation with type-safety.";
        buildType = "Simple";
      };
      components = {
        exes = {
          animate-example = {
            depends  = [
              hsPkgs.base
              hsPkgs.animate
              hsPkgs.sdl2
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.sdl2-image
              hsPkgs.bytestring
              hsPkgs.StateVar
            ];
          };
        };
      };
    }