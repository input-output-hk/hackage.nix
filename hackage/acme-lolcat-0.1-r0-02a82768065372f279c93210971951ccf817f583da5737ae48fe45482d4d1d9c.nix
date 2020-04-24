{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "acme-lolcat"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2013,2014 Antonio Nikishaev";
      maintainer = "Antonio Nikishaev <me@lelf.lu>";
      author = "Antonio Nikishaev <me@lelf.lu>";
      homepage = "https://github.com/llelf/acme-lolcat";
      url = "";
      synopsis = "LOLSPEAK translator";
      description = "LOLSPEAK translator";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          ];
        buildable = true;
        };
      };
    }