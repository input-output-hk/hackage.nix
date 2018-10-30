{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      dev = false;
      dump = false;
      prof = false;
      threaded = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "interval";
        version = "1.20160821";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "Julien Moutinho <julm+haskell+interval@autogeree.net>";
      author = "Julien Moutinho <julm+haskell+interval@autogeree.net>";
      homepage = "";
      url = "";
      synopsis = "Intervals with adherences.";
      description = "Data types to represent, compare and combine intervals with adherences.\n\nSee also:\n\n- https://hackage.haskell.org/package/data-interval\n- https://hackage.haskell.org/package/intervals";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.fingertree)
        ];
      };
      tests = {
        "interval-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.interval)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }