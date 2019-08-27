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
      identifier = { name = "dead-code-detection"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sönke Hahn <soenkehahn@gmail.com>";
      author = "";
      homepage = "https://github.com/soenkehahn/dead-code-detection#readme";
      url = "";
      synopsis = "detect dead code in haskell projects";
      description = "detect dead code in haskell projects";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dead-code-detection" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."getopt-generics" or (buildDepError "getopt-generics"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."graph-wrapper" or (buildDepError "graph-wrapper"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."gitrev" or (buildDepError "gitrev"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."getopt-generics" or (buildDepError "getopt-generics"))
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."graph-wrapper" or (buildDepError "graph-wrapper"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."uniplate" or (buildDepError "uniplate"))
            (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
            (hsPkgs."gitrev" or (buildDepError "gitrev"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."mockery" or (buildDepError "mockery"))
            (hsPkgs."interpolate" or (buildDepError "interpolate"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            ];
          };
        };
      };
    }