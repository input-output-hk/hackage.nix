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
      specVersion = "1.18";
      identifier = { name = "filepattern"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2011-2019";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>, Evan Rutledge Borden <evan@evan-borden.com>";
      homepage = "";
      url = "";
      synopsis = "File path glob-like matching";
      description = "A library for matching files using patterns such as @\\\"src\\/**\\/*.png\\\"@ for all @.png@ files\nrecursively under the @src@ directory. Features:\n\n* All matching is /O(n)/.\n\n* See \"System.FilePattern\" and 'System.FilePattern.?==' simple matching and semantics.\n\n* Use 'System.FilePattern.match' and 'System.FilePattern.substitute' to extract suitable\nstrings from the @*@ and @**@ matches, and substitute them back into other patterns.\n\n* Use 'System.FilePattern.step' and 'System.FilePattern.matchMany' to perform bulk matching\nof many patterns against many paths simultaneously.\n\n* Use \"System.FilePattern.Directory\" to perform optimised directory traverals using patterns.\n\nOriginally taken from the <https://hackage.haskell.org/package/shake Shake library>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.0") (hsPkgs."semigroups" or (buildDepError "semigroups"));
        };
      tests = {
        "filepattern-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."filepattern" or (buildDepError "filepattern"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          };
        };
      };
    }