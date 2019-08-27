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
    flags = { typelitssupport = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "OddWord"; version = "1.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2015 Robin KAY";
      maintainer = "Robin KAY <komadori@gekkou.co.uk>";
      author = "Robin KAY";
      homepage = "http://www.gekkou.co.uk/";
      url = "";
      synopsis = "Provides a wrapper for deriving word types with fewer bits.";
      description = "Provdes the 'OddWord' type, which wraps an existing integer type and\nexposes a subset of its bits as a new narrower word type. Includes\npredefined type synonyms for all the odd sized words up to 63 bits.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      tests = {
        "oddword-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."OddWord" or (buildDepError "OddWord"))
            ];
          };
        "oddword-tests-typelits" = {
          depends = (pkgs.lib).optionals (flags.typelitssupport && (compiler.isGhc && (compiler.version).ge "7.8")) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."OddWord" or (buildDepError "OddWord"))
            ];
          };
        };
      };
    }