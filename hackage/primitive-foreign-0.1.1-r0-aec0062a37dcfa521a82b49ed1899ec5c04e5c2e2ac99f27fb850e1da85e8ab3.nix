{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "primitive-foreign"; version = "0.1.1"; };
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
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          ];
        buildable = true;
        };
      tests = {
        "props" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
            (hsPkgs."primitive-foreign" or ((hsPkgs.pkgs-errors).buildDepError "primitive-foreign"))
            ];
          buildable = true;
          };
        };
      };
    }