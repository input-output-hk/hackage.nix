{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "prim-spoon"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Michael Klein, portions also licensed to: 2009 Matt Morrow & Dan Peebles, 2013 Liyang HU";
      maintainer = "Michael Klein <lambdamichael@gmail.com>";
      author = "Michael Klein";
      homepage = "https://github.com/michaeljklein/prim-spoon";
      url = "";
      synopsis = "Catch errors thrown from pure computations using primops.";
      description = "Takes an error-throwing expression and puts it back in the Maybe it belongs in, but with primops.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.ghc-prim) (hsPkgs.spoon) ];
        };
      tests = {
        "prim-spoon-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.spoon)
            (hsPkgs.prim-spoon)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      benchmarks = {
        "prim-spoon-bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.ghc-prim)
            (hsPkgs.prim-spoon)
            (hsPkgs.spoon)
            ];
          };
        };
      };
    }