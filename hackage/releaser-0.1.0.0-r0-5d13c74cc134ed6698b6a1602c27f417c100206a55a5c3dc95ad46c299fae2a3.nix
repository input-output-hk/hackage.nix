{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "releaser"; version = "0.1.0.0"; };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "domen@dev.si";
      author = "Domen Kozar";
      homepage = "";
      url = "";
      synopsis = "Automation of Haskell package release process";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."pretty-terminal" or ((hsPkgs.pkgs-errors).buildDepError "pretty-terminal"))
          ];
        buildable = true;
        };
      exes = {
        "releaser" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."releaser" or ((hsPkgs.pkgs-errors).buildDepError "releaser"))
            ];
          buildable = true;
          };
        };
      };
    }