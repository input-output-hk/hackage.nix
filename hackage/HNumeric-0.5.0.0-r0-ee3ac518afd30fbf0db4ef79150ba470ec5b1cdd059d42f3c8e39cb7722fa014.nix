{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "HNumeric"; version = "0.5.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Tae Geun Kim";
      maintainer = "edeftg@gmail.com";
      author = "Tae Geun Kim";
      homepage = "https://github.com/Axect/HNumeric#readme";
      url = "";
      synopsis = "Haskell Numeric Library with pure functionality, R & MATLAB Syntax.";
      description = "Please see the README on GitHub at <https://github.com/Axect/HNumeric#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."math-functions" or ((hsPkgs.pkgs-errors).buildDepError "math-functions"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          ];
        buildable = true;
        };
      tests = {
        "HNumeric-test" = {
          depends = [
            (hsPkgs."HNumeric" or ((hsPkgs.pkgs-errors).buildDepError "HNumeric"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."math-functions" or ((hsPkgs.pkgs-errors).buildDepError "math-functions"))
            (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = true;
          };
        };
      };
    }