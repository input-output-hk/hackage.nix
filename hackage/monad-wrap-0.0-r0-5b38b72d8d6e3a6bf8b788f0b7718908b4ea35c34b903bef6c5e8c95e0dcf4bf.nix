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
      identifier = { name = "monad-wrap"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "http://www.scs.stanford.edu/~dm/addr/";
      author = "David Mazieres";
      homepage = "";
      url = "";
      synopsis = "Wrap functions such as catch around different monads";
      description = "This package allows you to invoke a function on one monadic\ntype passing it an argument of a different monadic type.  The\ncanonical example of this is wanting to use a function such as\n@'finally' :: 'IO' a -> 'IO' a@ to catch exceptions thrown by\na computation @x :: 'ReaderT' MyConfig 'IO' b@.  If @x@ uses\nthe 'ReaderT' function 'ask', it cannot be re-written to run\nin the 'IO' monad, and hence cannot be executed with a\nconstruction like @'lift' (x ``finally`` cleanup)@.\nInstead, you must use the 'wrap' method, provide by module\n\"Control.Monad.Wrap\".  This package contains two further\nmodules:  \"Control.Monad.MultiWrap\" implements 'mwrap', a\nmethod that behaves like 'wrap' but allows wrapping through\nmultiple nested layers of monad transformer.  The module\n\"Control.Monad.MultiLift\" provides 'mlift', a version of\n'lift' that similarly lifts through multiple nested monad\ntransformers.";
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