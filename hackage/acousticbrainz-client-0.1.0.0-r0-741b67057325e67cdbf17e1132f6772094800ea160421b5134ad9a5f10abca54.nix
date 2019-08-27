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
      specVersion = "2.2";
      identifier = { name = "acousticbrainz-client"; version = "0.1.0.0"; };
      license = "CC0-1.0";
      copyright = "";
      maintainer = "chahine.moreau@gmail.com";
      author = "koral";
      homepage = "";
      url = "";
      synopsis = "AcousticBrainz API client";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
          (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
          (hsPkgs."relude" or (buildDepError "relude"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."microlens-platform" or (buildDepError "microlens-platform"))
          (hsPkgs."microlens-aeson" or (buildDepError "microlens-aeson"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      tests = {
        "golden-tests" = {
          depends = [
            (hsPkgs."base-noprelude" or (buildDepError "base-noprelude"))
            (hsPkgs."base-compat-batteries" or (buildDepError "base-compat-batteries"))
            (hsPkgs."relude" or (buildDepError "relude"))
            (hsPkgs."acousticbrainz-client" or (buildDepError "acousticbrainz-client"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."pretty-simple" or (buildDepError "pretty-simple"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (buildDepError "tasty-golden"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      };
    }