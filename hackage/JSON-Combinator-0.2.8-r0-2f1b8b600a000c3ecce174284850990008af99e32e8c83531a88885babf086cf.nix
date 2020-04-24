{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "JSON-Combinator"; version = "0.2.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "";
      url = "";
      synopsis = "A combinator library on top of a generalised JSON type";
      description = "A combinator library on top of a generalised JSON type. The highest-level module is\n@Text.JSON.Combinator@ and it is expected that no other module need to be explicitly imported.\n\nInstances for the combinators are provided for four libraries available on hackage:\n\n* json (@Text.JSON@)\n\n* JSONb (@Text.JSONb@)\n\n* hjson (@Text.HJson@)\n\n* aeson (@Data.Aeson@)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."JSONb" or ((hsPkgs.pkgs-errors).buildDepError "JSONb"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."hjson" or ((hsPkgs.pkgs-errors).buildDepError "hjson"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
          (hsPkgs."failure" or ((hsPkgs.pkgs-errors).buildDepError "failure"))
          ];
        buildable = true;
        };
      };
    }