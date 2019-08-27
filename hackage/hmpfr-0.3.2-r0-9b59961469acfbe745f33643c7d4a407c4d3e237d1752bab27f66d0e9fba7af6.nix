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
      specVersion = "1.2";
      identifier = { name = "hmpfr"; version = "0.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michal Konečný <mikkonecny@gmail.com>";
      author = "Aleš Bizjak, Michal Konečný";
      homepage = "http://code.google.com/p/hmpfr/";
      url = "";
      synopsis = "Haskell binding to the MPFR library";
      description = "Haskell binding to the MPFR library. This version is compatible\nwith MPFR 2.4.* and later and will not work with previous releases\nof the MPFR library.\n\n/Since MPFR uses GMP, this library does not work correctly/\n/with a ghc that has been compiled with integer-gmp./\n/When using ghc, this library will require that the ghc/\n/is compiled  with integer-simple./\n\nThe library includes a mutable interface\nin addition to the pure one. These functions should have a\nlot less overhead than the pure ones.\n\nSome simple examples of usage can be found in demo/Demo.hs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && true) (hsPkgs."integer-simple" or (buildDepError "integer-simple"));
        libs = [ (pkgs."mpfr" or (sysDepError "mpfr")) ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
          ];
        };
      };
    }