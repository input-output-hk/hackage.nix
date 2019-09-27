let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "scrape-changes"; version = "0.1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "matthias.mh.herrmann@googlemail.com";
      author = "Matthias Herrmann";
      homepage = "";
      url = "";
      synopsis = "Scrape websites for changes";
      description = "This library scrapes websites and invokes callbacks when there are changes, similar to a RSS reader.\nSending an email by invoking sendmail is a built-in callback mechanism. Of course, users can provide\ntheir own callback function in addition.\n\nLook at \"Network.ScrapeChanges\" for a full working example on how to use \"scrape-changes\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."validation" or (buildDepError "validation"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."email-validate" or (buildDepError "email-validate"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."cron" or (buildDepError "cron"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."hslogger" or (buildDepError "hslogger"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "scrapechanges-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."validation" or (buildDepError "validation"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."email-validate" or (buildDepError "email-validate"))
            (hsPkgs."cron" or (buildDepError "cron"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."scrape-changes" or (buildDepError "scrape-changes"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."shakespeare" or (buildDepError "shakespeare"))
            ];
          buildable = true;
          };
        };
      };
    }