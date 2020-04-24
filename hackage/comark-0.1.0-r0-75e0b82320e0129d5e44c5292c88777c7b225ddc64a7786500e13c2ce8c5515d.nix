{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "comark"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015, 2016, 2017";
      maintainer = "co@zudov.me";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Commonmark processing in pure haskell.";
      description = "See <https://github.com/zudov/haskell-comark#readme README>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."comark-syntax" or ((hsPkgs.pkgs-errors).buildDepError "comark-syntax"))
          (hsPkgs."comark-parser" or ((hsPkgs.pkgs-errors).buildDepError "comark-parser"))
          (hsPkgs."comark-html" or ((hsPkgs.pkgs-errors).buildDepError "comark-html"))
          ];
        buildable = true;
        };
      exes = {
        "comark-hs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."comark" or ((hsPkgs.pkgs-errors).buildDepError "comark"))
            ];
          buildable = true;
          };
        };
      };
    }