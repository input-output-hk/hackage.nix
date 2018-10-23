{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "derive-gadt";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Matt Morrow 2009";
      maintainer = "Matt Morrow <morrow@moonpatio.com>";
      author = "Matt Morrow";
      homepage = "";
      url = "";
      synopsis = "Instance deriving for (a subset of) GADTs.";
      description = "Very preliminary. Haddock-generated documentation in located at\n<http://moonpatio.com/repos/derive-gadt/haddocks>.";
      buildType = "Simple";
    };
    components = {
      "derive-gadt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.haskell-src-exts)
        ];
      };
      exes = {
        "derive-gadt" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.haskell-src-meta)
          ];
        };
        "hstidy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.haskell-src-meta)
            (hsPkgs.haskell-src-exts)
          ];
        };
      };
    };
  }