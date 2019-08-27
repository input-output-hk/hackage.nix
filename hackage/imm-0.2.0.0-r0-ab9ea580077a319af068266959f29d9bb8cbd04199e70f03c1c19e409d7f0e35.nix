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
      specVersion = "1.8";
      identifier = { name = "imm"; version = "0.2.0.0"; };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "koral att mailoo dott org";
      author = "kamaradclimber, koral";
      homepage = "";
      url = "";
      synopsis = "RSS-to-maildir tool";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."dyre" or (buildDepError "dyre"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."feed" or (buildDepError "feed"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."mime-mail" or (buildDepError "mime-mail"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."timerep" or (buildDepError "timerep"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."xdg-basedir" or (buildDepError "xdg-basedir"))
          (hsPkgs."xml" or (buildDepError "xml"))
          ];
        };
      exes = {
        "imm" = {
          depends = [
            (hsPkgs."imm" or (buildDepError "imm"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }