{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ho-rewriting"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2015, Emil Axelsson";
      maintainer = "78emil@gmail.com";
      author = "Emil Axelsson";
      homepage = "https://github.com/emilaxelsson/ho-rewriting";
      url = "";
      synopsis = "Generic rewrite rules with safe treatment of variables and binders";
      description = "This package gives a generic implementation of higher-order\nrewriting. The main idea is to use techniques from embedded\ndomain-specific languages to offer an interface which is\nboth safe and syntactically appealing.\n\nSome examples are found in the @examples@ directory. For\nmore information, see\n\\\"Lightweight Higher-Order Rewriting in Haskell\\\" (presented at TFP 2015):\n\n* Paper: <https://emilaxelsson.github.io/documents/axelsson2015lightweight.pdf>\n\n* Slides: <https://emilaxelsson.github.io/documents/axelsson2015lightweight_slides.pdf>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."compdata" or ((hsPkgs.pkgs-errors).buildDepError "compdata"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."patch-combinators" or ((hsPkgs.pkgs-errors).buildDepError "patch-combinators"))
          ];
        buildable = true;
        };
      tests = {
        "capture" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."compdata" or ((hsPkgs.pkgs-errors).buildDepError "compdata"))
            (hsPkgs."ho-rewriting" or ((hsPkgs.pkgs-errors).buildDepError "ho-rewriting"))
            (hsPkgs."patch-combinators" or ((hsPkgs.pkgs-errors).buildDepError "patch-combinators"))
            ];
          buildable = true;
          };
        };
      };
    }