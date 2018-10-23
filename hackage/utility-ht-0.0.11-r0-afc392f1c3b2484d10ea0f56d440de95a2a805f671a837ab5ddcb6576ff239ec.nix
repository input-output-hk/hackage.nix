{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "utility-ht";
        version = "0.0.11";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Various small helper functions for Lists, Maybes, Tuples, Functions";
      description = "Various small helper functions for Lists, Maybes, Tuples, Functions.\nSome of these functions are improved implementations of standard functions.\nThey have the same name as their standard counterparts.\nOthers are equivalent to functions from the @base@ package,\nbut if you import them from this utility package\nthen you can write code that runs on older GHC versions\nor other compilers like Hugs and JHC.\n\nAll modules are plain Haskell 98.\nThe package depends exclusively on the @base@ package\nand only that portions of @base@ that are simple to port.\nThus you do not risk a dependency avalanche by importing it.\nHowever, further splitting the base package might invalidate this statement.\n\nAlternative packages: @Useful@, @MissingH@";
      buildType = "Simple";
    };
    components = {
      "utility-ht" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
          ];
        };
      };
    };
  }