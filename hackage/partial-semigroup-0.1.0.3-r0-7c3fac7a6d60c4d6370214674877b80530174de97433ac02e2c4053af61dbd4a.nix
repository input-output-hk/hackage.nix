{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "partial-semigroup"; version = "0.1.0.3"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/partial-semigroup#readme";
      url = "";
      synopsis = "A partial binary associative operator";
      description = "A partial semigroup is like a semigroup, but the\noperator is partial. We represent this in Haskell\nas a total function @(<>?) :: a -> a -> Maybe a@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            ];
          buildable = true;
          };
        "hedgehog" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."partial-semigroup" or ((hsPkgs.pkgs-errors).buildDepError "partial-semigroup"))
            (hsPkgs."partial-semigroup-test" or ((hsPkgs.pkgs-errors).buildDepError "partial-semigroup-test"))
            ];
          buildable = true;
          };
        };
      };
    }