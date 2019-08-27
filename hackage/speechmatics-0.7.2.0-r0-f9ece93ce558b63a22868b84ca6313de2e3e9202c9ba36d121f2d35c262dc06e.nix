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
      identifier = { name = "speechmatics"; version = "0.7.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Daisee Pty Ltd";
      maintainer = "jappie.klooster@daisee.com";
      author = "Jappie Klooster";
      homepage = "https://bitbucket.org/daisee/speechmatics-api-client/";
      url = "";
      synopsis = "Speechmatics api client";
      description = "Upload audio files to speechmatics to get a transcription";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HsOpenSSL" or (buildDepError "HsOpenSSL"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."heavy-logger" or (buildDepError "heavy-logger"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-openssl" or (buildDepError "http-client-openssl"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."json-autotype" or (buildDepError "json-autotype"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mime-types" or (buildDepError "mime-types"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-format-heavy" or (buildDepError "text-format-heavy"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          ];
        };
      exes = {
        "speechmatics" = {
          depends = [
            (hsPkgs."SHA" or (buildDepError "SHA"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."heavy-logger" or (buildDepError "heavy-logger"))
            (hsPkgs."mime-types" or (buildDepError "mime-types"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."options" or (buildDepError "options"))
            (hsPkgs."speechmatics" or (buildDepError "speechmatics"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-format-heavy" or (buildDepError "text-format-heavy"))
            ];
          };
        };
      tests = {
        "speechmatics-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."heavy-logger" or (buildDepError "heavy-logger"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."speechmatics" or (buildDepError "speechmatics"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-format-heavy" or (buildDepError "text-format-heavy"))
            ];
          };
        };
      };
    }