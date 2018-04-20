{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.3";
        identifier = {
          name = "music-dynamics-literal";
          version = "1.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Overloaded dynamics literals.";
        description = "This package allow you to write the dynamic marks of standard notation as expressions\noverloaded on result type. This works exactly like numeric literals.\nThis library is part of the Haskell Music Suite, see <http://musicsuite.github.com>.";
        buildType = "Simple";
      };
      components = {
        music-dynamics-literal = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
            hsPkgs.time
            hsPkgs.random
            hsPkgs.semigroups
            hsPkgs.semigroupoids
          ];
        };
      };
    }