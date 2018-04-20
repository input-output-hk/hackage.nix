{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "semigroupoid-extras";
          version = "0.2.6";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://github.com/ekmett/semigroupoid-extras";
        url = "";
        synopsis = "Semigroupoids requiring Haskell extensions";
        description = "Semigroupoids and semigroupoid operations requiring Haskell extensions";
        buildType = "Simple";
      };
      components = {
        semigroupoid-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.distributive
            hsPkgs.semigroupoids
            hsPkgs.groupoids
            hsPkgs.comonad
          ];
        };
      };
    }