{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { aeson = true; comonad = true; semirings = true; };
    package = {
      specVersion = "2.2";
      identifier = { name = "hedgehog-classes"; version = "0.2.3"; };
      license = "BSD-3-Clause";
      copyright = "2019 chessai";
      maintainer = "chessai1996@gmail.com";
      author = "chessai";
      homepage = "https://github.com/chessai/hedgehog-classes";
      url = "";
      synopsis = "Hedgehog will eat your typeclass bugs";
      description = "This library provides Hedgehog properties to ensure\nthat typeclass instances adhere to the set of laws\nthat they are supposed to. There are other libraries\nthat do similar things, such as `genvalidity-hspec` and `checkers`.\nThis library differs from other solutions by not introducing any\nnew typeclasses that the user needs to learn, and otherwise minimal\nAPI overhead.\n\nThis library is directly inspired by `quickcheck-classes`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = (([
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.containers)
          (hsPkgs.hedgehog)
          (hsPkgs.pretty-show)
          (hsPkgs.silently)
          (hsPkgs.transformers)
          (hsPkgs.wl-pprint-annotated)
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs.aeson)) ++ (pkgs.lib).optional (flags.semirings) (hsPkgs.semirings)) ++ (pkgs.lib).optional (flags.comonad) (hsPkgs.comonad);
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.binary)
            (hsPkgs.comonad)
            (hsPkgs.containers)
            (hsPkgs.hedgehog)
            (hsPkgs.hedgehog-classes)
            ];
          };
        };
      };
    }