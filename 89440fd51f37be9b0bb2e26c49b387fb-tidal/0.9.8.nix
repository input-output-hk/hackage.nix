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
        name = "tidal";
        version = "0.9.8";
      };
      license = "GPL-3.0-only";
      copyright = "(c) Tidal contributors, 2017";
      maintainer = "Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
      author = "Alex McLean";
      homepage = "http://tidalcycles.org/";
      url = "";
      synopsis = "Pattern language for improvised music";
      description = "Tidal is a domain specific language for live coding pattern.";
      buildType = "Simple";
    };
    components = {
      "tidal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.colour)
          (hsPkgs.hosc)
          (hsPkgs.text)
          (hsPkgs.mersenne-random-pure64)
          (hsPkgs.time)
          (hsPkgs.parsec)
          (hsPkgs.safe)
          (hsPkgs.websockets)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.4.1")) (hsPkgs.semigroups);
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tidal)
          ];
        };
      };
    };
  }