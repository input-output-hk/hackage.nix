{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-locale = false; bytestring_has_builder = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tttool"; version = "1.3"; };
      license = "MIT";
      copyright = "2013-2014 Joachim Breitner";
      maintainer = "mail@joachim-breitner.de";
      author = "Joachim Breitner";
      homepage = "https://github.com/entropia/tip-toi-reveng";
      url = "";
      synopsis = "Working with files for the Tiptoi® pen";
      description = "The Ravensburger Tiptoi® pen is programmed via special\nfiles. Their file format has been reverse engineered; this\nis a tool to analyse and create such files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tttool" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."JuicyPixels" or ((hsPkgs.pkgs-errors).buildDepError "JuicyPixels"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ] ++ (if flags.old-locale
            then [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
              ]
            else [
              (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
              ])) ++ (if flags.bytestring_has_builder
            then [
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              ]
            else [
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."bytestring-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-builder"))
              ]);
          buildable = true;
          };
        };
      };
    }