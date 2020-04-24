{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { small_base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "JSON-Combinator"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tony Morris";
      author = "Tony Morris <ʇǝu˙sıɹɹoɯʇ@ןןǝʞsɐɥ>";
      homepage = "";
      url = "";
      synopsis = "A combinator library on top of a generalised JSON type";
      description = "A combinator library on top of a generalised JSON type. The highest-level module is\n@Text.JSON.Combinator@ and it is expected that no other module need to be explicitly imported.\n\nInstances for the combinators are provided for two libraries available on hackage:\n\n* json (@Text.JSON@)\n\n* JSONb (@Text.JSONb@)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."JSONb" or ((hsPkgs.pkgs-errors).buildDepError "JSONb"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."bytestring-trie" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-trie"))
          ];
        buildable = true;
        };
      };
    }