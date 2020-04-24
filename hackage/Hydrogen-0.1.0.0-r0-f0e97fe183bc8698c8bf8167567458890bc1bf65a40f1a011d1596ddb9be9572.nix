{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "Hydrogen"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2017 Author name here";
      maintainer = "iqsf@ya.ru";
      author = "Pavel";
      homepage = "https://github.com/iqsf/Hydrogen.git";
      url = "";
      synopsis = "The library for generating a WebGL scene for the web";
      description = "The library for generating a WebGL scene for the web for the Haskell programming language.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."shakespeare" or ((hsPkgs.pkgs-errors).buildDepError "shakespeare"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          (hsPkgs."HFitUI" or ((hsPkgs.pkgs-errors).buildDepError "HFitUI"))
          ];
        buildable = true;
        };
      exes = {
        "Hydrogen-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Hydrogen" or ((hsPkgs.pkgs-errors).buildDepError "Hydrogen"))
            ];
          buildable = true;
          };
        };
      tests = {
        "Hydrogen-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."Hydrogen" or ((hsPkgs.pkgs-errors).buildDepError "Hydrogen"))
            ];
          buildable = true;
          };
        };
      };
    }