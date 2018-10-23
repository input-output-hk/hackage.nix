{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Control-Monad-ST2";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Kevin Backhouse, 2013";
      maintainer = "Kevin.Backhouse@gmail.com";
      author = "Kevin Backhouse";
      homepage = "https://github.com/kevinbackhouse/Control-Monad-ST2";
      url = "";
      synopsis = "A variation on the ST monad with two type parameters.";
      description = "The ST2 monad is like the ST monad, but with\nfiner-grained control over access to mutable\nstate. The phantom type parameters r and w are\nused to track the read and write dependencies of\nthe computation. If a computation of type ST2 r w a\nis polymorphic in w then it does not write any\nexternal state. If it is also polymorphic in r\nthen it does not read any external state.";
      buildType = "Simple";
    };
    components = {
      "Control-Monad-ST2" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.SafeSemaphore)
          (hsPkgs.QuickCheck)
        ];
      };
      tests = {
        "Main" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.SafeSemaphore)
            (hsPkgs.QuickCheck)
            (hsPkgs.mtl)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
          ];
        };
      };
    };
  }