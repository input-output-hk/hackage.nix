{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "activehs"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divip@aszt.inf.elte.hu";
      author = "Péter Diviánszky";
      homepage = "";
      url = "";
      synopsis = "Haskell code presentation tool";
      description = "ActiveHs is a Haskell source code presentation tool, developed for\neducation purposes.\n\nUser's Guide: <http://pnyf.inf.elte.hu:8000/UsersGuide_en.xml>\n\nDeveloper's Documentation (partial): <http://pnyf.inf.elte.hu:8000/DevDoc_en.xml>\n\nThe software is in prototype phase, although it already served more\nthan 700 000 user requests at Eötvös Loránd University Budapest, Hungary.\n\nNote that this software has many rough edges; you are welcome to\nwork on it!";
      buildType = "Simple";
      };
    components = {
      exes = {
        "activehs" = {
          depends = [
            (hsPkgs."highlighting-kate" or ((hsPkgs.pkgs-errors).buildDepError "highlighting-kate"))
            (hsPkgs."hoogle" or ((hsPkgs.pkgs-errors).buildDepError "hoogle"))
            (hsPkgs."dia-base" or ((hsPkgs.pkgs-errors).buildDepError "dia-base"))
            (hsPkgs."dia-functions" or ((hsPkgs.pkgs-errors).buildDepError "dia-functions"))
            (hsPkgs."activehs-base" or ((hsPkgs.pkgs-errors).buildDepError "activehs-base"))
            (hsPkgs."data-pprint" or ((hsPkgs.pkgs-errors).buildDepError "data-pprint"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."xhtml" or ((hsPkgs.pkgs-errors).buildDepError "xhtml"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."hint" or ((hsPkgs.pkgs-errors).buildDepError "hint"))
            (hsPkgs."simple-reflect" or ((hsPkgs.pkgs-errors).buildDepError "simple-reflect"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            ];
          buildable = true;
          };
        };
      };
    }