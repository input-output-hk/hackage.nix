{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "nthable";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "porges@porg.es";
        author = "George Pollard";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Generalization of 'fst', 'snd', etc.";
        buildType = "Simple";
      };
      components = {
        nthable = {
          depends  = [
            hsPkgs.type-level
            hsPkgs.base
          ];
        };
      };
    }