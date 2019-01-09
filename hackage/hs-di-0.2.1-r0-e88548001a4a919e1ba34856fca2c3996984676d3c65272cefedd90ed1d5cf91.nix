{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hs-di"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2016 Milan Nagy";
      maintainer = "123.wizek@gmail.com";
      author = "Milan Nagy";
      homepage = "https://github.com/Wizek/hs-di#readme";
      url = "";
      synopsis = "Dependency Injection library for Haskell";
      description = "Dependency Injection library for Haskell to allow powerful unit testing and mocking (compile-time type-checked)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.compose-ltr)
          ];
        };
      tests = {
        "hs-di-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hs-di)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
            (hsPkgs.MissingH)
            (hsPkgs.compose-ltr)
            ];
          };
        };
      };
    }