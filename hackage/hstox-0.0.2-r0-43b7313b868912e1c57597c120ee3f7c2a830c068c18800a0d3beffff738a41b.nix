{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { library-only = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hstox"; version = "0.0.2"; };
      license = "GPL-3.0-only";
      copyright = "© 2016-2018 iphy";
      maintainer = "iphy";
      author = "iphy";
      homepage = "https://toktok.github.io";
      url = "";
      synopsis = "A Tox protocol implementation in Haskell";
      description = "A Tox protocol implementation in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."base16-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base16-bytestring"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."binary-bits" or ((hsPkgs.pkgs-errors).buildDepError "binary-bits"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-msgpack" or ((hsPkgs.pkgs-errors).buildDepError "data-msgpack"))
          (hsPkgs."data-msgpack-types" or ((hsPkgs.pkgs-errors).buildDepError "data-msgpack-types"))
          (hsPkgs."entropy" or ((hsPkgs.pkgs-errors).buildDepError "entropy"))
          (hsPkgs."integer-gmp" or ((hsPkgs.pkgs-errors).buildDepError "integer-gmp"))
          (hsPkgs."iproute" or ((hsPkgs.pkgs-errors).buildDepError "iproute"))
          (hsPkgs."lens-family" or ((hsPkgs.pkgs-errors).buildDepError "lens-family"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-msgpack-rpc" or ((hsPkgs.pkgs-errors).buildDepError "network-msgpack-rpc"))
          (hsPkgs."saltine" or ((hsPkgs.pkgs-errors).buildDepError "saltine"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ] ++ (pkgs.lib).optional (!flags.library-only) (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"));
        buildable = true;
        };
      exes = {
        "tox-refsut" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hstox" or ((hsPkgs.pkgs-errors).buildDepError "hstox"))
            ];
          buildable = if flags.library-only then false else true;
          };
        "tox-spectest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hstox" or ((hsPkgs.pkgs-errors).buildDepError "hstox"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = if flags.library-only then false else true;
          };
        };
      tests = {
        "testsuite" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."hstox" or ((hsPkgs.pkgs-errors).buildDepError "hstox"))
            ];
          buildable = true;
          };
        };
      };
    }