{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { aeson = true; semirings = true; };
    package = {
      specVersion = "2.4";
      identifier = { name = "hedgehog-classes"; version = "0.1.2"; };
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
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wl-pprint-annotated" or ((hsPkgs.pkgs-errors).buildDepError "wl-pprint-annotated"))
          ] ++ (pkgs.lib).optional (flags.aeson) (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))) ++ (pkgs.lib).optional (flags.semirings) (hsPkgs."semirings" or ((hsPkgs.pkgs-errors).buildDepError "semirings"));
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hedgehog-classes" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog-classes"))
            ];
          buildable = true;
          };
        };
      };
    }