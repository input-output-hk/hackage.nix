{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ds-kanren"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "jozefg@cmu.edu";
      author = "Danny Gratzer";
      homepage = "";
      url = "";
      synopsis = "A subset of the miniKanren language";
      description = "ds-kanren is an implementation of the <http://minikanren.org miniKanren> language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.containers) (hsPkgs.logict) ];
        };
      tests = {
        "test-unify:" = {
          depends = [
            (hsPkgs.ds-kanren)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            ];
          };
        "test-list-ops:" = {
          depends = [
            (hsPkgs.ds-kanren)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            ];
          };
        };
      };
    }