{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hero-club-five-tenets";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "d.kupanhy@gmail.com";
        author = "I am D.";
        homepage = "http://github.com/i-amd3/hero-club-five-tenets#README";
        url = "";
        synopsis = "Remember the five tenets of hero club";
        description = "This package give you Hero Club Five Tenets, Yuki Yuna is a Hero.";
        buildType = "Simple";
      };
      components = {
        "hero-club-five-tenets" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.random
          ];
        };
        exes = {
          "fivetenets" = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.random
              hsPkgs.hero-club-five-tenets
            ];
          };
        };
      };
    }