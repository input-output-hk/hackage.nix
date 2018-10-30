{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      with-conduit = true;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "sandi";
        version = "0.3.2";
      };
      license = "BSD-3-Clause";
      copyright = "Magnus Therning, 2012";
      maintainer = "magnus@therning.org";
      author = "Magnus Therning";
      homepage = "http://hackage.haskell.org/package/sandi";
      url = "";
      synopsis = "Data encoding library";
      description = "Reasonably fast data encoding library.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ] ++ pkgs.lib.optionals (flags.with-conduit) [
          (hsPkgs.conduit)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "sandi-tests" = {
          depends  = [
            (hsPkgs.sandi)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-th)
          ];
        };
      };
      benchmarks = {
        "sandi-bench" = {
          depends  = [
            (hsPkgs.sandi)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }