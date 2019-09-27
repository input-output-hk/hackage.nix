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
    flags = { advanced = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "check-pvp"; version = "0.0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Import_modules_properly";
      url = "";
      synopsis = "Check whether module and package imports conform to the PVP";
      description = "Check whether the version ranges used in the @Build-Depends@ field\nmatches the style of module imports\naccording to the Package Versioning Policy (PVP).\nSee <http://www.haskell.org/haskellwiki/Package_versioning_policy>.\nThe tool essentially looks for any dependency\nlike @containers >=0.5 && <0.7@\nthat allows the addition of identifiers to modules\nwithin the version range.\nThen it checks whether all module imports from @containers@\nare protected against name clashes\nthat could be caused by addition of identifiers.\n\nRelated:\nThere are programs that check PVP compliance of exports:\n\n* @cabal-bounds@: <http://hackage.haskell.org/package/cabal-bounds>\nsimplifies extending the version bounds in Build-Depends fields.\n\n* @precis@: <http://hackage.haskell.org/package/precis>\n\n* @apidiff@: <http://code.haskell.org/gtk2hs/tools/apidiff/>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "check-pvp" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        "check-pvp-compiler" = {
          depends = (pkgs.lib).optionals (flags.advanced) [
            (hsPkgs."haskell-packages" or (buildDepError "haskell-packages"))
            (hsPkgs."hse-cpp" or (buildDepError "hse-cpp"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.advanced then true else false;
          };
        };
      };
    }