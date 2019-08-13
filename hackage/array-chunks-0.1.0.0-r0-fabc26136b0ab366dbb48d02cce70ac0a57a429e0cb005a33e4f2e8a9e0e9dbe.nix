{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "array-chunks"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/array-chunks";
      url = "";
      synopsis = "Lists of chunks";
      description = "Lists of chunks. This is similar to the Cons List provided\nby `Data.List`, but it is more useful as a target for a\nbuilder since the chunks are cache coherent.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.primitive) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.QuickCheck)
            (hsPkgs.array-chunks)
            (hsPkgs.base)
            (hsPkgs.primitive)
            (hsPkgs.quickcheck-classes)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }