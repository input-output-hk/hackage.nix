{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "duration"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ryota Kameoka";
      maintainer = "kameoka.ryota@gmail.com";
      author = "Ryota Kameoka";
      homepage = "https://github.com/ryota-ka/duration#readme";
      url = "";
      synopsis = "A tiny compile-time time utility library inspired by zeit/ms";
      description = "A tiny compile-time time utility library inspired by zeit/ms";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.template-haskell)
          (hsPkgs.time)
          ];
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.duration)
            (hsPkgs.parsec)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
            ];
          };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.duration)
            (hsPkgs.hspec)
            (hsPkgs.parsec)
            (hsPkgs.template-haskell)
            (hsPkgs.time)
            ];
          };
        };
      };
    }