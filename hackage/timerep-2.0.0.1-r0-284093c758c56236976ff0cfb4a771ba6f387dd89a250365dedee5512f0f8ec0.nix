{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "timerep"; version = "2.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010-2015 Hugo Daniel Gomes";
      maintainer = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
      author = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
      homepage = "https://github.com/HugoDaniel/timerep";
      url = "";
      synopsis = "Parse and display time according to some RFCs (RFC3339, RFC2822, RFC822)";
      description = "Parse and display time according to some RFC's.\n\nSupported:\n\n* RFC822 <http://www.ietf.org/rfc/rfc0822.txt>\n\n* RFC2822 <http://www.ietf.org/rfc/rfc2822.txt>\n\n* RFC3339 <http://www.ietf.org/rfc/rfc3339.txt>\n\nSpecial thanks to Koral for all the suggestions and help in solving some bugs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."monoid-subclasses" or ((hsPkgs.pkgs-errors).buildDepError "monoid-subclasses"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          ];
        buildable = true;
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
            (hsPkgs."tasty" or ((hsPkgs.pkgs-errors).buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or ((hsPkgs.pkgs-errors).buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or ((hsPkgs.pkgs-errors).buildDepError "tasty-quickcheck"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."timerep" or ((hsPkgs.pkgs-errors).buildDepError "timerep"))
            ];
          buildable = true;
          };
        };
      };
    }