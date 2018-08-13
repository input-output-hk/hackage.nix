{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "skip-list";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "2017 Gregory Malecha";
      maintainer = "gmalecha@gmail.com";
      author = "Gregory Malecha";
      homepage = "https://github.com/gmalecha/skip-list#readme";
      url = "";
      synopsis = "An implementation of pure skip lists";
      description = "Skip lists provide efficient amortized indexing deep into lists by building an index that, essentially, converts the list into a balance binary tree. See <https://en.wikipedia.org/wiki/Skip_list the wikipedia entry on skip lists> for more information.";
      buildType = "Simple";
    };
    components = {
      "skip-list" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "skip-list-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.skip-list)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
      benchmarks = {
        "bench-foo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.criterion)
            (hsPkgs.skip-list)
          ];
        };
      };
    };
  }