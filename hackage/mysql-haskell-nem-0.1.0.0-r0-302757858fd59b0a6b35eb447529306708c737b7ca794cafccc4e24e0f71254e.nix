{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "mysql-haskell-nem"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016 José Lorenzo Rodríguez";
      maintainer = "jose.zap@gmail.com";
      author = "José Lorenzo Rodríguez\n, Bryan O'Sullivan\n, Paul Rouse";
      homepage = "https://github.com/lorenzo/mysql-haskell-nem#readme";
      url = "";
      synopsis = "Adds a interface like mysql-simple to mysql-haskell.";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mysql-haskell" or ((hsPkgs.pkgs-errors).buildDepError "mysql-haskell"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."io-streams" or ((hsPkgs.pkgs-errors).buildDepError "io-streams"))
          ];
        buildable = true;
        };
      };
    }