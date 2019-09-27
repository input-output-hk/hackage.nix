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
      identifier = { name = "mbox-tools"; version = "0.2.0.2"; };
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
      exes = {
        "mbox-counting" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            ];
          buildable = true;
          };
        "mbox-average-size" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "mbox-quoting" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "redact-mbox" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."random" or (buildDepError "random"))
            ];
          buildable = if !flags.useless then false else true;
          };
        "mbox-list" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hsemail" or (buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "mbox-pick" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hsemail" or (buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "mbox-partition" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hsemail" or (buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          buildable = true;
          };
        "mbox-grep" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hsemail" or (buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ] ++ (pkgs.lib).optional (flags.use_hutt) (hsPkgs."hutt" or (buildDepError "hutt"));
          buildable = if flags.use_hutt then true else false;
          };
        "split-mbox" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hsemail" or (buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        "mbox-iter" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hsemail" or (buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."process" or (buildDepError "process"))
            ];
          buildable = true;
          };
        "mbox-from-files" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."codec-mbox" or (buildDepError "codec-mbox"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."hsemail" or (buildDepError "hsemail"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."fclabels" or (buildDepError "fclabels"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }