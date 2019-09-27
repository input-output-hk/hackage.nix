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
      identifier = { name = "GenericPretty"; version = "1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ranca.razvan@gmail.com";
      author = "Razvan Ranca";
      homepage = "https://github.com/RazvanRanca/GenericPretty";
      url = "";
      synopsis = "A generic, derivable, haskell pretty printer.";
      description = "GenericPretty is a Haskell library that supports automatic\nderivation of pretty printing functions on user defined data\ntypes.\n\nThe form of generics used is based on that introduced in the paper:\nMagalhaes, Dijkstra, Jeuring, and Loh,\nA Generic Deriving Mechanism for Haskell,\n3'rd ACM Symposium on Haskell, pp. 37-48, September 2010,\n<http://dx.doi.org/10.1145/1863523.1863529>.\nChanges from the original paper in the GHC implementation\nare described here:\n<http://www.haskell.org/haskellwiki/GHC.Generics#Changes_from_the_paper>.\n\nThis package requires the use of the new GHC.Generics features\n<http://www.haskell.org/haskellwiki/GHC.Generics>, present from GHC 7.2.\nUse of these features is indicated by the DeriveGeneric pragma\nor the flag -XDeriveGeneric.\n\nPretty printing produces values of type Text.PrettyPrint.Doc, using\nthe Text.PrettyPrint library\n<http://www.haskell.org/ghc/docs/latest/html/libraries/pretty-1.1.1.0/Text-PrettyPrint.html>.\n\nThe output provided is a pretty printed version of that provided by\nPrelude.show.  That is, rendering the document provided by this pretty\nprinter yields an output identical to that of Prelude.show, except\nfor extra whitespace.\n\nFor information about the functions exported by the package please see\nthe API linked further down this page.\nFor examples of usage, both basic and more complex see the README file and\nthe haskell source code files in the TestSuite folder, both included in the package.\nFinally for installation instructions also see the README file or this page:\n<http://www.haskell.org/haskellwiki/Cabal/How_to_install_a_Cabal_package>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          ];
        buildable = true;
        };
      };
    }