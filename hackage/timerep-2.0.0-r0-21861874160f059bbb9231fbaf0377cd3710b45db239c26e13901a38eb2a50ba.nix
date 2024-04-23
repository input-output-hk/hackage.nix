{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "timerep"; version = "2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Hugo Daniel Gomes";
      maintainer = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
      author = "Hugo Daniel Gomes <mr.hugo.gomes@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Parse and display time according to some RFCs (RFC3339, RFC2822, RFC822)";
      description = "\nParse and display time according to some RFC's.\n\nSupported:\n\n* RFC822 <http://www.ietf.org/rfc/rfc0822.txt>\n* RFC2822 <http://www.ietf.org/rfc/rfc2822.txt>\n* RFC3339 <http://www.ietf.org/rfc/rfc3339.txt>\n\nSpecial thanks to Koral for all the suggestions and help in solving some bugs\n";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."monoid-subclasses" or (errorHandler.buildDepError "monoid-subclasses"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
        ];
        buildable = true;
      };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."cabal-test-quickcheck" or (errorHandler.buildDepError "cabal-test-quickcheck"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."time-locale-compat" or (errorHandler.buildDepError "time-locale-compat"))
            (hsPkgs."timerep" or (errorHandler.buildDepError "timerep"))
          ];
          buildable = true;
        };
      };
    };
  }