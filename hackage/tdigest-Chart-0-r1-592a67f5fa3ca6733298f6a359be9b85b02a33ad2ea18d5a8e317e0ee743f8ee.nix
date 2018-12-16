{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "tdigest-Chart";
        version = "0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/futurice/haskell-tdigest#readme";
      url = "";
      synopsis = "Chart generation from tdigest";
      description = "Chart generation from tdigest.\n\n@\n...\n@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base-compat)
          (hsPkgs.colour)
          (hsPkgs.semigroups)
          (hsPkgs.semigroupoids)
          (hsPkgs.tdigest)
          (hsPkgs.lens)
          (hsPkgs.Chart)
        ];
      };
      tests = {
        "tdigest-chart-examples" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.Chart)
            (hsPkgs.lens)
            (hsPkgs.tdigest)
            (hsPkgs.tdigest-Chart)
            (hsPkgs.vector)
            (hsPkgs.Chart-diagrams)
            (hsPkgs.mwc-random)
            (hsPkgs.statistics)
          ];
        };
      };
    };
  }