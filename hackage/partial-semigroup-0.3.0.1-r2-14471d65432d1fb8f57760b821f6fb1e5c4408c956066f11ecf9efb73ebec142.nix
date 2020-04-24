{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      semigroup-in-base = true;
      identity-in-base = true;
      enable-hedgehog = true;
      enable-doctest = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "partial-semigroup"; version = "0.3.0.1"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/partial-semigroup";
      url = "";
      synopsis = "A partial binary associative operator";
      description = "A partial semigroup is like a semigroup, but the operator is partial. We\nrepresent this in Haskell as a total function @(<>?) :: a -> a -> Maybe a@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (pkgs.lib).optional (flags.identity-in-base) (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))) ++ (if flags.semigroup-in-base
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ]
          else [
            (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
            ]);
        buildable = true;
        };
      tests = {
        "docs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ] ++ (pkgs.lib).optional (flags.enable-doctest) (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"));
          buildable = true;
          };
        "examples" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."partial-semigroup" or ((hsPkgs.pkgs-errors).buildDepError "partial-semigroup"))
            ] ++ (pkgs.lib).optional (flags.enable-hedgehog) (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))) ++ (if flags.semigroup-in-base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]
            else [
              (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
              ]);
          buildable = true;
          };
        "properties" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."partial-semigroup" or ((hsPkgs.pkgs-errors).buildDepError "partial-semigroup"))
            ] ++ (pkgs.lib).optional (flags.enable-hedgehog) (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))) ++ (if flags.semigroup-in-base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]
            else [
              (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
              ]);
          buildable = true;
          };
        "generics" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."partial-semigroup" or ((hsPkgs.pkgs-errors).buildDepError "partial-semigroup"))
            ] ++ (pkgs.lib).optional (flags.enable-hedgehog) (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))) ++ (if flags.semigroup-in-base
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              ]
            else [
              (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
              ]);
          buildable = true;
          };
        };
      };
    }