{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "heavy-logger-instances"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Ilya Portnov";
      maintainer = "portnov84@rambler.ru";
      author = "Ilya Portnov";
      homepage = "https://github.com/portnov/heavy-logger#readme";
      url = "";
      synopsis = "Orphan instances for data types in heavy-logger package";
      description = "Orphan instances for data types in heavy-logger package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."heavy-logger" or ((hsPkgs.pkgs-errors).buildDepError "heavy-logger"))
          (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."text-format-heavy" or ((hsPkgs.pkgs-errors).buildDepError "text-format-heavy"))
          ];
        buildable = true;
        };
      tests = {
        "binary-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
            (hsPkgs."heavy-logger" or ((hsPkgs.pkgs-errors).buildDepError "heavy-logger"))
            (hsPkgs."heavy-logger-instances" or ((hsPkgs.pkgs-errors).buildDepError "heavy-logger-instances"))
            (hsPkgs."hsyslog" or ((hsPkgs.pkgs-errors).buildDepError "hsyslog"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."text-format-heavy" or ((hsPkgs.pkgs-errors).buildDepError "text-format-heavy"))
            ];
          buildable = true;
          };
        };
      };
    }