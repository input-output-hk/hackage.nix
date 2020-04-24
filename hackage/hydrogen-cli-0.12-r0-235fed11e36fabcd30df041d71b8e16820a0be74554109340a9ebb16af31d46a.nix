{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "hydrogen-cli"; version = "0.12"; };
      license = "MIT";
      copyright = "";
      maintainer = "julian@scravy.de";
      author = "Julian Fleischer";
      homepage = "https://scravy.de/hydrogen-cli/";
      url = "";
      synopsis = "Hydrogen Data";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "h" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hydrogen-cli-args" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-cli-args"))
            (hsPkgs."hydrogen-data" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-data"))
            (hsPkgs."hydrogen-multimap" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-multimap"))
            (hsPkgs."hydrogen-parsing" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-parsing"))
            (hsPkgs."hydrogen-prelude" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-prelude"))
            (hsPkgs."hydrogen-syntax" or ((hsPkgs.pkgs-errors).buildDepError "hydrogen-syntax"))
            ];
          buildable = true;
          };
        };
      };
    }