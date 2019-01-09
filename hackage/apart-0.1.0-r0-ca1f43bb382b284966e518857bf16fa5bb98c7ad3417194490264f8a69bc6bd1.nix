{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "apart"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2018 Murat Kasimov";
      maintainer = "Murat Kasimov <iokasimov.m@gmail.com>";
      author = "Murat Kasimov";
      homepage = "https://github.com/iokasimov/tree";
      url = "";
      synopsis = "Get all your structure and rip it apart.";
      description = "The main idea: if you can describe your data structure via Cofree, with apart you can serialize, persistent or hash a segment of your structure!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.free)
          (hsPkgs.comonad)
          (hsPkgs.lens)
          (hsPkgs.contravariant)
          (hsPkgs.hedgehog)
          (hsPkgs.semigroupoids)
          ];
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.free)
            (hsPkgs.comonad)
            (hsPkgs.lens)
            (hsPkgs.contravariant)
            (hsPkgs.hedgehog)
            (hsPkgs.semigroupoids)
            (hsPkgs.apart)
            ];
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.free)
            (hsPkgs.comonad)
            (hsPkgs.lens)
            (hsPkgs.contravariant)
            (hsPkgs.hedgehog)
            (hsPkgs.semigroupoids)
            (hsPkgs.apart)
            ];
          };
        };
      };
    }