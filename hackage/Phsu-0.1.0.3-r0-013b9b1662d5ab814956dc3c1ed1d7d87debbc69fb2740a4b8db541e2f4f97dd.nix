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
      identifier = { name = "Phsu"; version = "0.1.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "utkarsh.lath@gmail.com";
      author = "Utakrsh Lath";
      homepage = "localhost:9119";
      url = "";
      synopsis = "Personal Happstack Server Utils";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "Phsu" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."happstack-server" or (buildDepError "happstack-server"))
            (hsPkgs."happstack-server-tls" or (buildDepError "happstack-server-tls"))
            (hsPkgs."acid-state" or (buildDepError "acid-state"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."regex-base" or (buildDepError "regex-base"))
            (hsPkgs."lifted-base" or (buildDepError "lifted-base"))
            (hsPkgs."monad-control" or (buildDepError "monad-control"))
            (hsPkgs."safecopy" or (buildDepError "safecopy"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."curl" or (buildDepError "curl"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."regex-pcre" or (buildDepError "regex-pcre"))
            (hsPkgs."friendly-time" or (buildDepError "friendly-time"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            ];
          };
        };
      };
    }