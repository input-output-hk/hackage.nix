{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "peg"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "dustin.deweese@gmail.com";
      author = "Dustin DeWeese";
      homepage = "http://github.com/HackerFoo/peg";
      url = "";
      synopsis = "a lazy non-deterministic concatenative programming language";
      description = "Peg is a lazy non-deterministic concatenative programming language inspired by Haskell, Joy, and Prolog.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "peg" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."logict" or ((hsPkgs.pkgs-errors).buildDepError "logict"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }