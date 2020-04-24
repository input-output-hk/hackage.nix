{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "xml-enumerator-combinators"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "aristidb@googlemail.com";
      author = "Aristid Breitkreuz";
      homepage = "";
      url = "";
      synopsis = "Parser combinators for xml-enumerator and compatible XML parsers.";
      description = "Parser combinators for xml-enumerator and compatible XML parsers. The aim is to provide advanced parser combinators to eliminate\ntiresome repetition of boilerplate in streaming XML parsers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          (hsPkgs."xml-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "xml-enumerator"))
          ];
        buildable = true;
        };
      exes = {
        "runtests" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."HUnit" or ((hsPkgs.pkgs-errors).buildDepError "HUnit"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }