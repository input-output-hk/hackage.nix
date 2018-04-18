{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "rating-systems";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "mightybyte@gmail.com";
        author = "Doug Beardsley";
        homepage = "https://github.com/mightybyte/rating-systems";
        url = "";
        synopsis = "Implementations of several rating systems: Elo, Glicko, etc";
        description = "This package contains implementations of several rating systems for\nestimating the skill of players of multi-player games..";
        buildType = "Simple";
      };
      components = {
        rating-systems = {
          depends  = [ hsPkgs.base ];
        };
      };
    }