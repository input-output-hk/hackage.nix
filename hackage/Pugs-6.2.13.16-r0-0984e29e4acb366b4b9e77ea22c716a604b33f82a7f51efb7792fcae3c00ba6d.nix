{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { perl5 = true; };
    package = {
      specVersion = "1.2.3";
      identifier = { name = "Pugs"; version = "6.2.13.16"; };
      license = "BSD-3-Clause";
      copyright = "2005-2008, The Pugs Contributors";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "http://pugscode.org/";
      url = "";
      synopsis = "A Perl 6 Implementation";
      description = "A Perl 6 Implementation";
      buildType = "Custom";
      };
    components = {
      exes = {
        "pugs" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."FindBin" or ((hsPkgs.pkgs-errors).buildDepError "FindBin"))
            (hsPkgs."control-timeout" or ((hsPkgs.pkgs-errors).buildDepError "control-timeout"))
            (hsPkgs."MetaObject" or ((hsPkgs.pkgs-errors).buildDepError "MetaObject"))
            (hsPkgs."HsParrot" or ((hsPkgs.pkgs-errors).buildDepError "HsParrot"))
            (hsPkgs."pugs-compat" or ((hsPkgs.pkgs-errors).buildDepError "pugs-compat"))
            (hsPkgs."pugs-DrIFT" or ((hsPkgs.pkgs-errors).buildDepError "pugs-DrIFT"))
            (hsPkgs."stringtable-atom" or ((hsPkgs.pkgs-errors).buildDepError "stringtable-atom"))
            (hsPkgs."HsSyck" or ((hsPkgs.pkgs-errors).buildDepError "HsSyck"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            ];
          buildable = true;
          };
        };
      };
    }