{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xournal-parser"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ian-Woo Kim <ianwookim@gmail.com>";
      author = "Ian-Woo Kim";
      homepage = "http://ianwookim.org/hxournal";
      url = "";
      synopsis = "Xournal file parser";
      description = "Text parser for xournal xml file";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."attoparsec-iteratee" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-iteratee"))
          (hsPkgs."iteratee" or ((hsPkgs.pkgs-errors).buildDepError "iteratee"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."xml-enumerator" or ((hsPkgs.pkgs-errors).buildDepError "xml-enumerator"))
          (hsPkgs."enumerator" or ((hsPkgs.pkgs-errors).buildDepError "enumerator"))
          (hsPkgs."strict" or ((hsPkgs.pkgs-errors).buildDepError "strict"))
          (hsPkgs."iteratee-compress" or ((hsPkgs.pkgs-errors).buildDepError "iteratee-compress"))
          (hsPkgs."xournal-types" or ((hsPkgs.pkgs-errors).buildDepError "xournal-types"))
          (hsPkgs."xml-types" or ((hsPkgs.pkgs-errors).buildDepError "xml-types"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."fclabels" or ((hsPkgs.pkgs-errors).buildDepError "fclabels"))
          (hsPkgs."zlib-enum" or ((hsPkgs.pkgs-errors).buildDepError "zlib-enum"))
          ];
        buildable = true;
        };
      };
    }