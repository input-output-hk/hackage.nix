{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "language-java-classfile"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Dr. ERDI Gergo <gergo@erdi.hu>";
      author = "Dr. ERDI Gergo <http://gergo.erdi.hu/>";
      homepage = "";
      url = "";
      synopsis = "Parser for Java .class files";
      description = "Parses compiled Java .class files into the syntax tree\nof the language-java package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."language-java" or ((hsPkgs.pkgs-errors).buildDepError "language-java"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."data-flags" or ((hsPkgs.pkgs-errors).buildDepError "data-flags"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          ];
        buildable = true;
        };
      };
    }