{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "terminfo-hs"; version = "0.2.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Bryan Richter, 2013–2018";
      maintainer = "Bryan Richter <b@chreekat.net>";
      author = "Bryan Richter";
      homepage = "";
      url = "";
      synopsis = "A pure-Haskell (no FFI) module for accessing terminfo databases";
      description = "This module can acquire terminfo databases and query them for terminal\ncapabilities. For details of terminfo, consult the man pages for\nterm(5) and terminfo(5).\nThis package is dead simple, and doesn't do anything fancy with the\ncapabilities themselves. It merely provides a means for accessing them.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."errors" or ((hsPkgs.pkgs-errors).buildDepError "errors"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."terminfo-hs" or ((hsPkgs.pkgs-errors).buildDepError "terminfo-hs"))
            ];
          buildable = true;
          };
        };
      };
    }