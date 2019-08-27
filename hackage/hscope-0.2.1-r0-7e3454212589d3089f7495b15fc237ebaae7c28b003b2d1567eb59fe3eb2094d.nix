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
      identifier = { name = "hscope"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "Boris Sukholitko <boriss@gmail.com>";
      maintainer = "Boris Sukholitko <boriss@gmail.com>";
      author = "Boris Sukholitko <boriss@gmail.com>";
      homepage = "https://github.com/bosu/hscope";
      url = "";
      synopsis = "cscope like browser for Haskell code";
      description = "hscope is a partial cscope line oriented mode reimplementation for Haskell code.\nCurrently it supports finding the definition and callers of the function, types.\nAlso works searching for files and in files.\nSee hscope --help for available options.\nBeing cscope-compatible gives Vim integration for free. Use :set cscopeprg\nto configure hscope as cscope replacement for haskell files.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hscope" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hs-cdb" or (buildDepError "hs-cdb"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."cereal" or (buildDepError "cereal"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cpphs" or (buildDepError "cpphs"))
            ];
          };
        };
      tests = {
        "Build" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."test-simple" or (buildDepError "test-simple"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Unixutils" or (buildDepError "Unixutils"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            ];
          };
        };
      };
    }