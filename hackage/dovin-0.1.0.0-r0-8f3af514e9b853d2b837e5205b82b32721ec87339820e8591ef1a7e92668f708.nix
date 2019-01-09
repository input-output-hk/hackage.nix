{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "dovin"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Xavier Shay";
      maintainer = "contact@xaviershay.com";
      author = "Xavier Shay";
      homepage = "https://github.com/xaviershay/dovin#readme";
      url = "";
      synopsis = "A proof assistant for Magic: The Gathering puzzles.";
      description = "Please see the README on GitHub at <https://github.com/githubuser/dovin#readme>";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "dovin" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dovin)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "dovin-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dovin)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }