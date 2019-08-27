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
      identifier = { name = "bhoogle"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2018 Andre Van Der Merwe";
      maintainer = "andre@andrevdm.com";
      author = "Andre Van Der Merwe";
      homepage = "https://github.com/githubuser/bhoogle#readme";
      url = "";
      synopsis = "Simple terminal GUI for local hoogle.";
      description = "bhoogle is a terminal GUI layer over local hoogle. It provides search ahead and sub-string filtering in addition to the usual type-search.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "bhoogle" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."protolude" or (buildDepError "protolude"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."brick" or (buildDepError "brick"))
            (hsPkgs."safe-exceptions" or (buildDepError "safe-exceptions"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."vty" or (buildDepError "vty"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."hoogle" or (buildDepError "hoogle"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }