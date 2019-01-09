{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tidal"; version = "1.0.0"; };
      license = "GPL-3.0-only";
      copyright = "(c) Tidal contributors, 2018";
      maintainer = "Alex McLean <alex@slab.org>, Mike Hodnick <mike.hodnick@gmail.com>";
      author = "Alex McLean";
      homepage = "http://tidalcycles.org/";
      url = "";
      synopsis = "Pattern language for improvised music";
      description = "Tidal is a domain specific language for live coding pattern.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.colour)
          (hsPkgs.hosc)
          (hsPkgs.hosc)
          (hsPkgs.text)
          (hsPkgs.random)
          (hsPkgs.time)
          (hsPkgs.parsec)
          (hsPkgs.safe)
          (hsPkgs.mtl)
          (hsPkgs.monad-loops)
          (hsPkgs.network)
          (hsPkgs.mwc-random)
          (hsPkgs.vector)
          (hsPkgs.bifunctors)
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.4.1")) (hsPkgs.semigroups);
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.microspec)
            (hsPkgs.containers)
            (hsPkgs.parsec)
            (hsPkgs.tidal)
            ];
          };
        };
      };
    }