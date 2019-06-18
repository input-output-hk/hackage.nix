{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "primitive-foreign"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2019 chessai";
      maintainer = "chessai <chessai1996@gmail.com>";
      author = "chessai";
      homepage = "https://github.com/haskell-primitive/primitive-ffi";
      url = "";
      synopsis = "using the `Prim` interface for the FFI";
      description = "This library provides an alternative to the `Storable` interface,\nusing the `Prim` typeclass. The goal is to make it possible to avoid\nthe duplicated code between `Storable` and `Prim` APIs when one is\nworking mostly with the `primitive` or `contiguous` APIs.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.primitive) ]; };
      tests = {
        "props" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.QuickCheck)
            (hsPkgs.primitive)
            (hsPkgs.primitive-foreign)
            ];
          };
        };
      };
    }