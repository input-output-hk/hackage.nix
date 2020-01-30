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
    flags = { stack-based-tests = false; warnmore = true; };
    package = {
      specVersion = "1.12";
      identifier = { name = "assumpta"; version = "0.1.0.0"; };
      license = "BSD-2-Clause";
      copyright = "2020 phlummox";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox";
      homepage = "https://github.com/phlummox/assumpta#readme";
      url = "";
      synopsis = "An SMTP client library";
      description = "An SMTP client library,\nwhich allows you to send email via\nan SMTP server.\n\nFor further details, please see the README on GitHub at\n<https://github.com/phlummox/assumpta#readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."assumpta-core" or (buildDepError "assumpta-core"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      tests = {
        "hspec-tests" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."assumpta" or (buildDepError "assumpta"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."assumpta-core" or (buildDepError "assumpta-core"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."quickcheck-io" or (buildDepError "quickcheck-io"))
            ];
          buildable = true;
          };
        "compile-examples" = {
          depends = (pkgs.lib).optionals (!(!flags.stack-based-tests)) [
            (hsPkgs."assumpta" or (buildDepError "assumpta"))
            (hsPkgs."assumpta-core" or (buildDepError "assumpta-core"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."shelly" or (buildDepError "shelly"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = if !flags.stack-based-tests then false else true;
          };
        };
      };
    }