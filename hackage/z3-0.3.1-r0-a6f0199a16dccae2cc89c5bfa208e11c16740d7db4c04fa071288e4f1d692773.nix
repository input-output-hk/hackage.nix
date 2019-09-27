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
      specVersion = "1.6";
      identifier = { name = "z3"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "2012-2013, Iago Abal, David Castro";
      maintainer = "Iago Abal <iago.abal@gmail.com>,\nDavid Castro <david.castro.dcp@gmail.com>";
      author = "Iago Abal <iago.abal@gmail.com>,\nDavid Castro <david.castro.dcp@gmail.com>";
      homepage = "http://bitbucket.org/iago/z3-haskell";
      url = "";
      synopsis = "Bindings for the Z3 Theorem Prover";
      description = "Bindings for the Z3 Theorem Prover (<http://z3.codeplex.com>).\n\nLow-level bindings to the Z3 API are provided by \"Z3.Base\", this API is\nstill incomplete but pretty much stable.\n\nA simple but convenient wrapper for \"Z3.Base\" is provided by \"Z3.Monad\".\n\nThe \"Z3.Lang\" API provides a high-level interface to Z3, but it is still\nvery experimental and likely to change.\n\nImportant notes:\n\n* Installation (Unix-like): Just be sure to use the standard locations for\ndynamic libraries (\\/usr\\/lib) and header files (\\/usr\\/include), or else\nuse the --extra-lib-dirs and --extra-include-dirs Cabal flags.\n\n* Hackage fails to compile this package because of the (unsatisfied) /libz3/\ndependency.\n\n* Haddock documentation can be found at\n<http://www.iagoabal.eu/z3-haskell/doc/0.3.1>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        libs = if system.isOsx || system.isWindows
          then [ (pkgs."z3" or (sysDepError "z3")) ]
          else [
            (pkgs."gomp" or (sysDepError "gomp"))
            (pkgs."z3" or (sysDepError "z3"))
            (pkgs."gomp" or (sysDepError "gomp"))
            ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }