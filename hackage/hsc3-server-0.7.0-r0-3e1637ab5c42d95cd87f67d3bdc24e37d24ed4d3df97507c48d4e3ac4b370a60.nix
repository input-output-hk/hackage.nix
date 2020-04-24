{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "1.9.2";
      identifier = { name = "hsc3-server"; version = "0.7.0"; };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) Stefan Kersten 2008-2013";
      maintainer = "kaoskorobase@gmail.com";
      author = "Stefan Kersten";
      homepage = "https://github.com/kaoskorobase/hsc3-server";
      url = "";
      synopsis = "SuperCollider server resource management and synchronization.";
      description = "This library provides abstractions for managing SuperCollider server\nresources like node, buffer and bus ids and synchronization primitives.\n\nChangeLog: <https://github.com/kaoskorobase/hsc3-server/blob/master/ChangeLog.md>\n\nExamples: <https://github.com/kaoskorobase/hsc3-server/tree/master/examples>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bitset" or ((hsPkgs.pkgs-errors).buildDepError "bitset"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."failure" or ((hsPkgs.pkgs-errors).buildDepError "failure"))
          (hsPkgs."hashtables" or ((hsPkgs.pkgs-errors).buildDepError "hashtables"))
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
          (hsPkgs."hsc3-process" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-process"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."ListZipper" or ((hsPkgs.pkgs-errors).buildDepError "ListZipper"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      exes = {
        "hsc3-hello" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
            (hsPkgs."hsc3-server" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-server"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        "hsc3-sine-grains" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
            (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
            (hsPkgs."hsc3-server" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-server"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ];
          buildable = if flags.build-examples then true else false;
          };
        };
      tests = {
        "hsc3-server-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."failure" or ((hsPkgs.pkgs-errors).buildDepError "failure"))
            (hsPkgs."hsc3-server" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-server"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."test-framework" or ((hsPkgs.pkgs-errors).buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or ((hsPkgs.pkgs-errors).buildDepError "test-framework-quickcheck2"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }