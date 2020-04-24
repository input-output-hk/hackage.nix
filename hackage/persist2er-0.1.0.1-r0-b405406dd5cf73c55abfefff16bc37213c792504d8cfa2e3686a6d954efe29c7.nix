{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "persist2er"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "felipe.garay@usach.cl";
      author = "Felipe Garay";
      homepage = "";
      url = "";
      synopsis = "Transforms persist's quasi-quoted syntax into ER format";
      description = "This is a simple program to transform persist's\nquasi-quoted syntax, like the used in yesod, into ER format.\nYou can use the <https://hackage.haskell.org/package/erd erd>\nto generate a diagram from this representation.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "persist2er" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            ];
          buildable = true;
          };
        };
      };
    }