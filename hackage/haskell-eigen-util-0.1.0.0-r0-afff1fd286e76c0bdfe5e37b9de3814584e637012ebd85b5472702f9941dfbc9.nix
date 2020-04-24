{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-eigen-util"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 Dilawar Singh";
      maintainer = "dilawars@ncbs.res.in";
      author = "Dilawar Singh";
      homepage = "https://github.com/dilawar/haskell-eigen-util#Readme.md";
      url = "";
      synopsis = "Some utility functions for haskell-eigen library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."eigen" or ((hsPkgs.pkgs-errors).buildDepError "eigen"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "haskell-eigen-util-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-eigen-util" or ((hsPkgs.pkgs-errors).buildDepError "haskell-eigen-util"))
            ];
          buildable = true;
          };
        };
      };
    }