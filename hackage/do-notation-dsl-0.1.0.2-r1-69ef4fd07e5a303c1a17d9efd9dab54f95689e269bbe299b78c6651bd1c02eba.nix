{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "do-notation-dsl"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2018 Yang Bo";
      maintainer = "pop.atry@gmail.com";
      author = "Yang Bo";
      homepage = "https://github.com/Atry/do-notation-dsl#readme";
      url = "";
      synopsis = "An alternative to monads";
      description = "Please see the README on GitHub at <https://github.com/Atry/do-notation-dsl#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          ];
        buildable = true;
        };
      tests = {
        "doctests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."do-notation-dsl" or ((hsPkgs.pkgs-errors).buildDepError "do-notation-dsl"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."doctest-discover" or ((hsPkgs.pkgs-errors).buildDepError "doctest-discover"))
            (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
            (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
            ];
          buildable = true;
          };
        };
      };
    }