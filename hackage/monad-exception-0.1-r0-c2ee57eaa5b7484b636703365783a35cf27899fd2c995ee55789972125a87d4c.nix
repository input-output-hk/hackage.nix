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
      identifier = { name = "monad-exception"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "shane@duairc.com";
      author = "Shane O'Brien";
      homepage = "";
      url = "";
      synopsis = "Exstensible monadic exceptions";
      description = "Extensible exceptions are a good solution to the exception problem in\nHaskell. However, there is one problem: they are not extensible enough!\nThe problem is that the functions defined in @Control.Exception@ for dealing\nwith exceptions can only be used with the @IO@ monad. A lot of Haskell code\nuses a stack of monads, at the bottom of which is @IO@, but the @IO@ monad\nis not used directly.\n\nThere have been many attempts to solve this problem, but the stumbling block\nhas been the presence of short-circuiting monad transformers: sometimes,\nthese prevented the cleanup actions from being run, making it effectively\nimpossible to catch exceptions in such monads. The @monad-control@ package\nhas been developed as a solution to this problem: it defines a way to turn\na monad transformer stack \\\"inside-out\\\", which ensures that cleanup actions\nare run even when the original action short-circuits. The @lifted-base@\npackage, built on top of @monad-control@, exports the\n@Control.Exception.Lifted@ module, which contains versions of the\n\"Control.Exception\" functions that work on any monad stack with @IO@ at its\nbase.\n\nThis has pretty much solved the above problems. However, one thing that the\nsolutions that came before @monad-control@ did was provide a type class\nencapsulating exception functionality that could be implemented by pure\nmonads, allowing you to use the same interface to throw and catch exceptions\nin both pure and @IO@-based code. This also makes it possible to express\nwhich can throw an exception, but which don't necessarily do any IO and\nwhich are polymorphic in their exception throwing (i.e., you could run the\nfunction in @IO@ and it would use @throwIO@, or you could run it as an\n@Either@ and it would use @Left@).\n\nThat's what this package does. It provides a @MonadException@ type class (in\nthe \"Control.Monad.Exception.Class\" module), which has instances for @IO@\nand @IO@-like monads (for which @monad-control@ is used to provide the\ncorrect instances as described above), as well as for some pure monads.\nSeveral overlapping instances (in the spirit of @mtl-evil-instances@) are\nprovided, so it is not necessary to provide a pass-through instance for\n@MonadException@ for every monad transformer you write.\n\nThis package also defines an @ExceptionT@ monad transformer (in\n\"Control.Monad.Trans.Exception\") that can be used to add @MonadException@\nfunctionality to otherwise pure monad stacks. @mtl-evil-instances@ is used\nto automatically provide pass-through instances for the @mtl@ type classes\nfor this transformer.\n\nFinally, this package includes the module \"Control.Exception.Monadic\", which\nis a full replacement for \"Control.Exception\", whose functions work on\nany instance of @MonadException@ and not just @IO@. The functions for\ndealing with asynchronous exceptions require @IO@ however, so these are only\npolymorphic for any @IO@-like monadic (as determined by @monad-control@).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."mtl-evil-instances" or (buildDepError "mtl-evil-instances"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }