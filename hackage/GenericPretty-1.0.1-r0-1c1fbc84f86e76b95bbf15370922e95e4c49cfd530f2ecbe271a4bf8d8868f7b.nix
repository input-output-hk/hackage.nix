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
      identifier = { name = "GenericPretty"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ranca.razvan@gmail.com";
      author = "Razvan Ranca";
      homepage = "https://github.com/HaggisMcMutton/GenericPretty";
      url = "";
      synopsis = "A generic, derivable, haskell pretty printer.";
      description = "GenericPretty is a haskell library that provides support for automatic\nderivation of pretty printing functions on user defined data types.\nThe Pretty library <http://www.haskell.org/ghc/docs/7.0.4/html/libraries/ghc-7.0.4/Pretty.html>\nis used underneath, the work is done over 'Pretty.Doc' types.\n\nThe output provided by the library functions is identical to that of Prelude.show,\nexcept it has extra whitespace.\n\nThis requires the use of the new GHC.Generics features: <http://www.haskell.org/haskellwiki/Generics>.\nAs of 9.08.2011, these aren't present in the stable GHC releases, but\nseem to be present in the GHC HEAD development snapshots >= 7.1.20110601.\n\nThe Generics used are based on those described in the paper \"A Generic Deriving Mechanism for Haskell\" :\n<http://dreixel.net/research/pdf/gdmh.pdf> . The changes from the original paper on the ghc implementation\nare described here: <http://www.haskell.org/haskellwiki/Generics#Changes_from_the_paper>.\n\nFor more info and examples of usage please see the README file included  in the package\nand the API at <http://haggismcmutton.github.com/GenericPretty/>\n\nInstallation of the package is straightforward, if needed, instructions can be found,\nfor instance, here: <http://www.haskell.org/haskellwiki/Cabal/How_to_install_a_Cabal_package>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          ];
        buildable = true;
        };
      };
    }