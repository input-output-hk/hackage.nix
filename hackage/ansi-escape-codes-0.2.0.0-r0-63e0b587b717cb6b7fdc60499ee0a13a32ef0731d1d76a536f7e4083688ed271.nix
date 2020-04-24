{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ansi-escape-codes"; version = "0.2.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "joegesualdo@gmail.com";
      author = "Joe Gesualdo";
      homepage = "https://github.com/joegesualdo/ansi-escape-codes";
      url = "";
      synopsis = "Haskell package to generate ANSI escape codes for styling strings in the terminal.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }