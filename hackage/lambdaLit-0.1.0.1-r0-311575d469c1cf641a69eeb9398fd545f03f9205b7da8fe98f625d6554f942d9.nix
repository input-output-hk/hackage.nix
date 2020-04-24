{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "lambdaLit"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "raphaelsimeon@gmail.com";
      author = "Raphaël Mongeau";
      homepage = "";
      url = "";
      synopsis = "...";
      description = "An repl using the lambdaBase package";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lambdaLit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."lambdaBase" or ((hsPkgs.pkgs-errors).buildDepError "lambdaBase"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }