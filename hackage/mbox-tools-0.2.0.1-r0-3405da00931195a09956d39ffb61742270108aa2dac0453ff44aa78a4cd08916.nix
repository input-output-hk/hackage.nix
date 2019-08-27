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
    flags = { use_hutt = false; useless = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "mbox-tools"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Nicolas Pouillard";
      maintainer = "Nicolas Pouillard <nicolas.pouillard@gmail.com>";
      author = "Nicolas Pouillard";
      homepage = "https://github.com/np/mbox-tools";
      url = "";
      synopsis = "A collection of tools to process mbox files";
      description = "A collection of tools to process mbox files";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
          (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
          (hsPkgs."hsemail" or (buildDepError "hsemail"))
          ];
        };
      exes = {
        "mbox-counting" = {};
        "mbox-average-size" = {};
        "mbox-quoting" = {};
        "redact-mbox" = {
          depends = [ (hsPkgs."random" or (buildDepError "random")) ];
          };
        "mbox-list" = {};
        "mbox-pick" = {};
        "mbox-partition" = {};
        "mbox-grep" = {
          depends = (pkgs.lib).optional (flags.use_hutt) (hsPkgs."hutt" or (buildDepError "hutt"));
          };
        "split-mbox" = {};
        "mbox-iter" = {
          depends = [ (hsPkgs."process" or (buildDepError "process")) ];
          };
        "mbox-from-files" = {};
        };
      };
    }