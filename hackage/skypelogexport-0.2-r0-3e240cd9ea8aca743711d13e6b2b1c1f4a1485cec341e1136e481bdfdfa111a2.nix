{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "skypelogexport"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jdevelop@gmail.com";
      author = "Eugene Dzhurinsky";
      homepage = "https://github.com/jdevelop/skypelogexport/wiki";
      url = "";
      synopsis = "Export Skype chat logs to text files";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "skypelogexport" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."IfElse" or ((hsPkgs.pkgs-errors).buildDepError "IfElse"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."ghc-binary" or ((hsPkgs.pkgs-errors).buildDepError "ghc-binary"))
            ];
          buildable = true;
          };
        };
      };
    }