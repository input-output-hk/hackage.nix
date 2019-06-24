{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "dovin"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2019 Xavier Shay";
      maintainer = "contact@xaviershay.com";
      author = "Xavier Shay";
      homepage = "https://github.com/xaviershay/dovin#readme";
      url = "";
      synopsis = "A proof assistant for Magic: The Gathering puzzles.";
      description = "Please see the README on GitHub at <https://github.com/xaviershay/dovin#dovin>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.directory or (pkgs.buildPackages.directory))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        ];
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
          (hsPkgs.split)
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
            (hsPkgs.split)
            (hsPkgs.unordered-containers)
            ];
          };
        "mtgtc" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.dovin)
            (hsPkgs.hashable)
            (hsPkgs.lens)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.split)
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
            (hsPkgs.split)
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