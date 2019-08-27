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
    flags = { shared-llvm = false; debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "llvm-general"; version = "3.2.7.0"; };
      license = "BSD-3-Clause";
      copyright = "Benjamin S. Scarlet 2013";
      maintainer = "Benjamin S. Scarlet <fgthb0@greynode.net>";
      author = "Benjamin S.Scarlet <fgthb0@greynode.net>";
      homepage = "";
      url = "";
      synopsis = "General purpose LLVM bindings";
      description = "llvm-general is a set of Haskell bindings for LLVM <http://llvm.org/>. Unlike other current Haskell bindings,\nit uses an ADT to represent LLVM IR (<http://llvm.org/docs/LangRef.html>), and so offers two advantages: it\nhandles almost all of the stateful complexities of using the LLVM API to build IR; and it supports moving IR not\nonly from Haskell into LLVM C++ objects, but the other direction - from LLVM C++ into Haskell.\n\nFor haddock, see <http://bscarlet.github.io/llvm-general/3.2.7.0/doc/html/llvm-general/index.html>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."setenv" or (buildDepError "setenv"))
          (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
          ];
        libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
        build-tools = [
          (hsPkgs.buildPackages.llvm-config or (pkgs.buildPackages.llvm-config or (buildToolDepError "llvm-config")))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-hunit" or (buildDepError "test-framework-hunit"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."llvm-general" or (buildDepError "llvm-general"))
            (hsPkgs."llvm-general-pure" or (buildDepError "llvm-general-pure"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }