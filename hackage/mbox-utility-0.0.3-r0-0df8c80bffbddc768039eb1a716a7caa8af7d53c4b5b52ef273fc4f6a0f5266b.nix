{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "mbox-utility"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de";
      author = "Henning Thielemann";
      homepage = "";
      url = "";
      synopsis = "List contents of an mbox file containing e-mails";
      description = "List contents of an mbox file containing e-mails.\nThis is intended for post-processing by the @cutter@ command.\nSee <http://hackage.haskell.org/package/cutter>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "lsmbox" = {
          depends = [
            (hsPkgs."hsemail" or ((hsPkgs.pkgs-errors).buildDepError "hsemail"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."spreadsheet" or ((hsPkgs.pkgs-errors).buildDepError "spreadsheet"))
            (hsPkgs."non-empty" or ((hsPkgs.pkgs-errors).buildDepError "non-empty"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }