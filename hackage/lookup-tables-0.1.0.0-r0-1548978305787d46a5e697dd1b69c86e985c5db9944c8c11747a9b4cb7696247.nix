{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lookup-tables"; version = "0.1.0.0"; };
      license = "ISC";
      copyright = "2015 Jacob McArthur";
      maintainer = "Jake.McArthur@gmail.com";
      author = "Jake McArthur";
      homepage = "";
      url = "";
      synopsis = "Statically generate lookup tables using Template\nHaskell.";
      description = "This package provides a single Template Haskell\nfunction for memoizing a given function by\nstatically generating a lookup table.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.primitive)
          (hsPkgs.template-haskell)
          ];
        };
      tests = {
        "lookup-tables-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.lookup-tables)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            ];
          };
        };
      };
    }