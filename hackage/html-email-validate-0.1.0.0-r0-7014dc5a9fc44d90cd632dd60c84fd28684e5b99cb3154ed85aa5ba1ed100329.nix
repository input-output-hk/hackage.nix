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
      specVersion = "1.10";
      identifier = { name = "html-email-validate"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015";
      maintainer = "konstantin@anche.no";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Validating an email address against HTML standard";
      description = "The library allows to validate and parse an email address\nas it's defined in <https://html.spec.whatwg.org/multipage/forms.html#valid-e-mail-address HTML standard>.\nNote that HTML specification of a valid email address is a\n'willful violation' of RFC 5322. If you want to validate\nan address against RFC 5322 you should use <https://hackage.haskell.org/package/email-validate email-validate>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."regex-pcre-builtin" or (buildDepError "regex-pcre-builtin"))
            (hsPkgs."html-email-validate" or (buildDepError "html-email-validate"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."html-email-validate" or (buildDepError "html-email-validate"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }