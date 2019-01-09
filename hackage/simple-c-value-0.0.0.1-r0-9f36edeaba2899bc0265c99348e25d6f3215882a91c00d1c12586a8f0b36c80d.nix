{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "simple-c-value"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/simple-c-value";
      url = "";
      synopsis = "A simple C value type";
      description = "This library provides a very simple C like AST and conversion type classes. The classes use GHC.Generics and default signatures so you can painless convert to and from Haskell types.\nThis is not a library for parsing C. There are plenty of great ones on Hackage though. This is meant to make the process of converting from a non-recursive Haskell value to a C value easier for data serialization tasks.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tuple)
          (hsPkgs.DebugTraceHelpers)
          (hsPkgs.dlist)
          (hsPkgs.ghc-prim)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.template-haskell)
            (hsPkgs.DebugTraceHelpers)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework)
            (hsPkgs.uniplate)
            (hsPkgs.checkers)
            (hsPkgs.mtl)
            (hsPkgs.tuple)
            (hsPkgs.derive)
            (hsPkgs.ghc-prim)
            (hsPkgs.dlist)
            ];
          };
        };
      };
    }