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
    flags = { debug = false; testcoverage = false; };
    package = {
      specVersion = "1.20";
      identifier = { name = "hLLVM"; version = "0.5.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ning Wang <email@ningwang.org>";
      author = "Ning Wang <email@ningwang.org>";
      homepage = "";
      url = "";
      synopsis = "A library for analyzing and transforming LLVM (3.5) assembly codes";
      description = "A pure Haskell library for analyzing and transforming LLVM assembly codes. It includes:\n1) a parser to parse LLVM code in its text form;\n2) an internal IR that is designed for Hoopl and direct composition;\n3) a set of utility functions to convert LLVM AST to and from the internal IR;\n4) a set of utility functions to query the IR.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."hooplext" or (buildDepError "hooplext"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."data-dword" or (buildDepError "data-dword"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      exes = {
        "llvm-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."hooplext" or (buildDepError "hooplext"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."data-dword" or (buildDepError "data-dword"))
            ];
          buildable = true;
          };
        };
      };
    }