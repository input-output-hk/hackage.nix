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
      identifier = { name = "llvm-tools"; version = "0.2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "travitch@cs.wisc.edu";
      author = "Tristan Ravitch";
      homepage = "";
      url = "";
      synopsis = "Useful tools built on llvm-analysis";
      description = "This package includes some tools to visualize the LLVM IR.\nCurrent visualizations include static call graphs, CFGs, CDGs,\ndominator trees, and some simple escape graphs.  Output formats\ninclude most graphviz-supported formats, along with an\nHTML-based format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
          (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
          (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          ];
        buildable = true;
        };
      exes = {
        "DumpLLVMModule" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
            ];
          buildable = true;
          };
        "FindValue" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            ];
          buildable = true;
          };
        "ViewIRGraph" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
            (hsPkgs."llvm-tools" or (buildDepError "llvm-tools"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            ];
          buildable = true;
          };
        "TypeUnificationCheck" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."llvm-analysis" or (buildDepError "llvm-analysis"))
            (hsPkgs."llvm-data-interop" or (buildDepError "llvm-data-interop"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."process-conduit" or (buildDepError "process-conduit"))
            (hsPkgs."attoparsec-conduit" or (buildDepError "attoparsec-conduit"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            ];
          buildable = true;
          };
        };
      };
    }