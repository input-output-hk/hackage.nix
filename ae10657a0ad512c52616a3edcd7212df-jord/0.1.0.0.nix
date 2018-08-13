{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "jord";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Cedric Liegeois";
      maintainer = "Cedric Liegeois <ofmooseandmen@yahoo.com>";
      author = "Cedric Liegeois";
      homepage = "https://github.com/ofmooseandmen/jord";
      url = "";
      synopsis = "Geographic position calculations on Great Circles";
      description = "Please see the README on GitHub at <https://github.com/ofmooseandmen/jord#readme>";
      buildType = "Simple";
    };
    components = {
      "jord" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "jord-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskeline)
            (hsPkgs.jord)
          ];
        };
      };
      tests = {
        "jord-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.jord)
          ];
        };
      };
    };
  }