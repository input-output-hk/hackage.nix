{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bank-holidays-england"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) David Turner 2014";
      maintainer = "dave.c.turner@gmail.com";
      author = "David Turner";
      homepage = "https://bitbucket.org/davecturner/bank-holidays-england";
      url = "";
      synopsis = "Algorithm for calculating bank holidays in England and Wales";
      description = "Algorithm for calculating bank holidays in England and Wales";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.time) (hsPkgs.containers) ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bank-holidays-england)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            (hsPkgs.time)
            ];
          };
        };
      };
    }