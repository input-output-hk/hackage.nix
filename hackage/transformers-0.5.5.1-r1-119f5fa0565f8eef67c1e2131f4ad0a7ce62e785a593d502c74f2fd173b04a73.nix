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
      identifier = { name = "transformers"; version = "0.5.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ross Paterson <R.Paterson@city.ac.uk>";
      author = "Andy Gill, Ross Paterson";
      homepage = "";
      url = "";
      synopsis = "Concrete functor and monad transformers";
      description = "A portable library of functor and monad transformers, inspired by\nthe paper \\\"Functional Programming with Overloading and Higher-Order\nPolymorphism\\\", by Mark P Jones,\nin /Advanced School of Functional Programming/, 1995\n(<http://web.cecs.pdx.edu/~mpj/pubs/springschool.html>).\n\nThis package contains:\n\n* the monad transformer class (in \"Control.Monad.Trans.Class\")\n\n* concrete functor and monad transformers, each with associated\noperations and functions to lift operations associated with other\ntransformers.\n\nThe package can be used on its own in portable Haskell code, in\nwhich case operations need to be manually lifted through transformer\nstacks (see \"Control.Monad.Trans.Class\" for some examples).\nAlternatively, it can be used with the non-portable monad classes in\nthe @mtl@ or @monads-tf@ packages, which automatically lift operations\nintroduced by monad transformers through other transformers.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && ((compiler.version).ge "7.2" && (compiler.version).lt "7.5")) (hsPkgs."ghc-prim" or (buildDepError "ghc-prim"));
        };
      };
    }