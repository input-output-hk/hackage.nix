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
      specVersion = "1.2.3";
      identifier = { name = "compose-trans"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "miguelimo38@yandex.ru";
      author = "Miguel Mitrofanov";
      homepage = "";
      url = "";
      synopsis = "Composable monad transformers";
      description = "A version of monad transformers that (a) allows one to convince the type checker that transformer application is a monad, and (b) doesn't need lots of boilerplate to add a new transformer. It's supposed to play nicely with @Control.Monad.Trans@.\n\nIn order to make a new transformer (say, @T@) an instance of @TransM@ (@TransP@, @TransF@) class, all you have to do is:\n\n* define @instance MonadTrans T@ &#x2014; which you've probably done already\n\n* define @instance Monad m => Monad (T m)@ &#x2014; also something quite common (for @TransP@ and @TransF@ you'd need another instance for @MonadPlus@ and @MonadFix@, respectively).\n\n* write @instance Trans T where transMInst = instM@ &#x2014; which is exactly one line of boilerplate. Sorry for that.\n\nAfter that, you can use your new and shiny transformer in compositions, like @ReaderT Char :. T :. WriterT String@ &#x2014; and such a composition would automagically become a monad transmormer.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }