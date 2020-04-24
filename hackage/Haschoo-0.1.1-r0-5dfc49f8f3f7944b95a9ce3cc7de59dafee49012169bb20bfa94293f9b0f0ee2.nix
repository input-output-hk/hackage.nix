{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "Haschoo"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Matti Niemenmaa <matti.niemenmaa+haschoo@iki.fi>";
      author = "Matti Niemenmaa";
      homepage = "http://iki.fi/matti.niemenmaa/misc-projects.html#haschoo";
      url = "";
      synopsis = "Minimalist R5RS Scheme interpreter";
      description = "Haschoo is a minimalist R5RS interpreter written in Haskell for a university\ncourse.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "haschoo" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."list-tries" or ((hsPkgs.pkgs-errors).buildDepError "list-tries"))
            (hsPkgs."numbers" or ((hsPkgs.pkgs-errors).buildDepError "numbers"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      };
    }