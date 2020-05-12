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
    flags = { enable-hlint-test = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "atom-conduit"; version = "0.7.0.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "Streaming parser/renderer for the Atom 1.0 standard (RFC 4287).";
      description = "Cf README.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."blaze-builder" or (errorHandler.buildDepError "blaze-builder"))
          (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."lens-simple" or (errorHandler.buildDepError "lens-simple"))
          (hsPkgs."parsers" or (errorHandler.buildDepError "parsers"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."timerep" or (errorHandler.buildDepError "timerep"))
          (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
          (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
          (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
          ];
        buildable = true;
        };
      tests = {
        "quickcheck" = {
          depends = [
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."atom-conduit" or (errorHandler.buildDepError "atom-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."generic-random" or (errorHandler.buildDepError "generic-random"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            ];
          buildable = true;
          };
        "golden" = {
          depends = [
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."atom-conduit" or (errorHandler.buildDepError "atom-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."pretty-simple" or (errorHandler.buildDepError "pretty-simple"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            ];
          buildable = true;
          };
        "unit" = {
          depends = [
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."atom-conduit" or (errorHandler.buildDepError "atom-conduit"))
            (hsPkgs."conduit" or (errorHandler.buildDepError "conduit"))
            (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
            (hsPkgs."lens-simple" or (errorHandler.buildDepError "lens-simple"))
            (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
            (hsPkgs."resourcet" or (errorHandler.buildDepError "resourcet"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."uri-bytestring" or (errorHandler.buildDepError "uri-bytestring"))
            (hsPkgs."xml-conduit" or (errorHandler.buildDepError "xml-conduit"))
            (hsPkgs."xml-types" or (errorHandler.buildDepError "xml-types"))
            ];
          buildable = true;
          };
        "hlint" = {
          depends = [
            (hsPkgs."base-noprelude" or (errorHandler.buildDepError "base-noprelude"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
            ];
          buildable = if flags.enable-hlint-test then true else false;
          };
        };
      };
    }