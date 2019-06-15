{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "wordify"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Gordon Martin";
      maintainer = "happy0";
      author = "Gordon Martin";
      homepage = "https://github.com/happy0/wordify#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/githubuser/wordify#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.errors)
          (hsPkgs.listsafe)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.random)
          (hsPkgs.safe)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.transformers)
          (hsPkgs.unordered-containers)
          ];
        };
      exes = {
        "wordify-exe" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.errors)
            (hsPkgs.listsafe)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.safe)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.wordify)
            ];
          };
        };
      tests = {
        "wordify-test" = {
          depends = [
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.errors)
            (hsPkgs.filepath)
            (hsPkgs.listsafe)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.safe)
            (hsPkgs.semigroups)
            (hsPkgs.split)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.transformers)
            (hsPkgs.unordered-containers)
            (hsPkgs.wordify)
            ];
          };
        };
      };
    }