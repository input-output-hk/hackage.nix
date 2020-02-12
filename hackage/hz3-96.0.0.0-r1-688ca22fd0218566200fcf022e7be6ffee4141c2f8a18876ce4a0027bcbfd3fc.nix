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
    flags = { examples = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "hz3"; version = "96.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2012-2018, Iago Abal, David Castro";
      maintainer = "M Farkas-Dyck <strake888@gmail.com>";
      author = "Iago Abal <mail@iagoabal.eu>,\nDavid Castro <david.castro.dcp@gmail.com>";
      homepage = "https://github.com/strake/z3.hs";
      url = "";
      synopsis = "Bindings for the Z3 Theorem Prover";
      description = "Fork of <https://hackage.haskell.org/package/z3 z3> with future-proof version-numbering scheme\n\nBindings for the Z3 4./x/ Theorem Prover (<https://github.com/Z3Prover/z3>).\n\n* \"Z3.Base.C\" provides the raw foreign imports from Z3's C API.\n\n* \"Z3.Base\" does the marshaling of values between Haskell and C,\nand transparently handles reference counting of Z3 objects for you.\n\n* \"Z3.Monad\" provides a convenient monadic wrapper for the common usage scenario.\n\nExamples: <https://github.com/strake/z3.hs/tree/master/examples>\n\nChangelog: <https://github.com/strake/z3.hs/blob/master/CHANGES.md>\n\nInstallation:\n\n* /Unix-like/: Just be sure to use the standard locations for\ndynamic libraries (\\/usr\\/lib) and header files (\\/usr\\/include),\nor else use the --extra-lib-dirs and --extra-include-dirs Cabal flags.\n\n(Hackage reports a build failure because Z3's library is missing.)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        libs = [ (pkgs."z3" or (sysDepError "z3")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      exes = {
        "examples" = {
          depends = (pkgs.lib).optionals (flags.examples) [
            (hsPkgs."hz3" or (buildDepError "hz3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = if flags.examples then true else false;
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."hz3" or (buildDepError "hz3"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            ];
          buildable = true;
          };
        };
      };
    }