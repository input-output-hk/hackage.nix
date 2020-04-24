{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "clr-typed"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2017 Tim Matthews";
      maintainer = "pepeiborra@gmail.com";
      author = "Tim Matthews";
      homepage = "https://gitlab.com/tim-m89/clr-haskell/tree/master/libs/clr-typed";
      url = "";
      synopsis = "A strongly typed Haskell interface to the CLR type system";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."clr-marshal" or ((hsPkgs.pkgs-errors).buildDepError "clr-marshal"))
          ];
        buildable = true;
        };
      tests = {
        "clr-typed-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."clr-typed" or ((hsPkgs.pkgs-errors).buildDepError "clr-typed"))
            (hsPkgs."clr-marshal" or ((hsPkgs.pkgs-errors).buildDepError "clr-marshal"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }