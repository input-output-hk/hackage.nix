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
      identifier = { name = "llvm-ffi-tools"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Henning Thielemann, Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://haskell.org/haskellwiki/LLVM";
      url = "";
      synopsis = "Tools for maintaining the llvm-ffi package";
      description = "The package contains tools for maintaining the FFI interface to LLVM\nin the @llvm-ffi@ package\n<http://hackage.haskell.org/package/llvm-ffi>.\nMost notably there is the @llvm-function-mangler@\nthat converts LLVM-C bindings to Haskell foreign imports.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "llvm-diff-ffi" = {
          depends = [
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-function-mangler" = {
          depends = [
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        "llvm-intrinsic-mangler" = {
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          };
        };
      };
    }