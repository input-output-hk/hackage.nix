{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "tidal"; version = "1.0.6"; };
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
          (hsPkgs.colour)
          (hsPkgs.hosc)
          (hsPkgs.text)
          (hsPkgs.parsec)
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