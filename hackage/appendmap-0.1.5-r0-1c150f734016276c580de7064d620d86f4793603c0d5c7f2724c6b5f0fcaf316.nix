{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "appendmap"; version = "0.1.5"; };
      license = "BSD-3-Clause";
      copyright = "2018 Alexey Kotlyarov";
      maintainer = "a@koterpillar.com";
      author = "Alexey Kotlyarov";
      homepage = "https://github.com/koterpillar/appendmap#readme";
      url = "";
      synopsis = "Map with a Semigroup and Monoid instances delegating to Semigroup of the elements";
      description = "Please see the README on GitHub at <https://github.com/koterpillar/appendmap#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.containers) ]; };
      tests = {
        "appendmap-test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.appendmap)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.hspec)
            ];
          };
        };
      };
    }