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
      specVersion = "2.2";
      identifier = { name = "haskell2020"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Haskell 2020[draft] Standard Library";
      description = "This package provides an implementation of library modules to be defined by the future Haskell2020 Library Report.\n\n__NOTE__: The Haskell2020 Library Report has not yet been released and therefore this implementation is merely a technical preview and subject to change.\n\n== Changes relative to Haskell2010\n\n* [Remove Show/Eq superclasses of Num](https://mail.haskell.org/pipermail/libraries/2011-September/016699.html)\n* [Remove Num superclass of Bits](https://mail.haskell.org/pipermail/libraries/2011-October/016899.html)\n* [Add Bits instance for Bool](https://ghc.haskell.org/trac/ghc/ticket/7424)\n* Add 'Monad' instance for @(->)@ and 'Either'; add 'Functor' instance for @(,)@\n* [Export Word from Prelude](https://mail.haskell.org/pipermail/libraries/2014-August/023491.html)\n* [Functor-Applicative-Monad proposal (AMP)](https://wiki.haskell.org/Functor-Applicative-Monad_Proposal)\n* [Monad of no return/>> proposal (MRP)](https://ghc.haskell.org/trac/ghc/wiki/Proposal/MonadOfNoReturn)\n* [MonadFail proposal (MFP)](https://prime.haskell.org/wiki/Libraries/Proposals/MonadFail)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."base" or (buildDepError "base"))
          ];
        };
      };
    }