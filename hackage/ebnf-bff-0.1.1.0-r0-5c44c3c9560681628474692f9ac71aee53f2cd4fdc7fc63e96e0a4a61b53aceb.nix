{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ebnf-bff"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "ma302fh@gold.ac.uk";
      author = "Lokidottir";
      homepage = "";
      url = "";
      synopsis = "Parser combinators & EBNF, BFFs!";
      description = "A library & program that builds parsers from ISO EBNF using Parsec";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "ebnf-parse" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."ebnf-bff" or ((hsPkgs.pkgs-errors).buildDepError "ebnf-bff"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."cond" or ((hsPkgs.pkgs-errors).buildDepError "cond"))
            ];
          buildable = true;
          };
        };
      };
    }