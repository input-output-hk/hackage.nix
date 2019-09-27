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
      identifier = { name = "PPrinter"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s1563190@sms.ed.ac.uk";
      author = "Yi Zhen";
      homepage = "";
      url = "";
      synopsis = "A generic derivable Haskell pretty printer";
      description = "A library that supports deriving of pretty printing functions on data types.\n\nThe interfaces of pretty printer used are based on that introduced in the paper:\nPhilip Wadler, A Prettier Printer, The Fun of Programming,\nCornerstones of Computing (2003): 223-243.\n<http://homepages.inf.ed.ac.uk/wadler/papers/prettier/prettier.pdf original paper>\n\nThe form of generic feature used is based on that introduced in the paper:\nMagalhaes, et al., A Generic Deriving Mechanism for Haskell,\n3'rd ACM Symposium on Haskell, pp. 37-48, September 2010,\n<http://dx.doi.org/10.1145/1863523.1863529>.\nThe necessary information of implementation of GHC.Generics is described here:\n<https://hackage.haskell.org/package/base-4.9.0.0/docs/GHC-Generics.html#g:1>.\n\nThe implementation of deriving part of API is based on that designed in the library:\nGenericPretty, the details are introduced here:\n<https://hackage.haskell.org/package/GenericPretty>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }