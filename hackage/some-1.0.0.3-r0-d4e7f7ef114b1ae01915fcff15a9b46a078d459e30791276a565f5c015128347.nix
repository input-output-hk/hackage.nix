{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { newtype-unsafe = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "some"; version = "1.0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Oleg Grenrus <oleg.grenrus@iki.fi>";
      author = "James Cook <mokus@deepbondi.net>, Oleg Grenrus <oleg.grenrus@iki.fi>";
      homepage = "https://github.com/phadej/some";
      url = "";
      synopsis = "Existential type: Some";
      description = "This library defines an existential type 'Some'.\n\n@\ndata Some f where\n\\    Some :: f a -> Some f\n@\n\nin few variants, and utilities to work with it.\n\nIf you are unsure which variant to use, use the one in \"Data.Some\" module.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "7.8")) (hsPkgs."type-equality" or ((hsPkgs.pkgs-errors).buildDepError "type-equality"))) ++ (pkgs.lib).optionals (!(compiler.isGhc && (compiler.version).ge "8.0")) [
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."transformers-compat" or ((hsPkgs.pkgs-errors).buildDepError "transformers-compat"))
          ];
        buildable = true;
        };
      tests = {
        "hkd-example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."some" or ((hsPkgs.pkgs-errors).buildDepError "some"))
            ];
          buildable = true;
          };
        };
      };
    }