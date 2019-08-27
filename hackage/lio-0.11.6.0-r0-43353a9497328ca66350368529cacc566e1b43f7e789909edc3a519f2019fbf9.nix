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
      specVersion = "1.8";
      identifier = { name = "lio"; version = "0.11.6.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Deian Stefan <deian at cs dot ucsd dot edu>";
      author = "Hails team";
      homepage = "https://github.com/plsyssec/lio";
      url = "";
      synopsis = "Labeled IO Information Flow Control Library";
      description = "The /Labeled IO/ (LIO) library is an information flow control (IFC)\nlibrary. IFC is a mechanism that enforces security policies by\ntracking and controlling the flow of information within a system.\nUnlike discretionary access control (such as UNIX file permissions),\nIFC permits scenarios in which untrusted computation may have the\nability to manipulate secret data without having the ability to\nfurther disclose that data.\n\nLIO is an IFC library that can be used to implement such untrusted\ncomputations.  LIO provides combinators similar to those of 'IO' for\nperforming side-effecting computations (e.g., modifying mutable\nreferences, forking threads, throwing and catching exceptions, etc.)\nTo track and control the flow of information, LIO associates a\nsecurity policy, called a /label/, with every piece of data.  A\nlabel may, for example, impose a restriction on who can observe,\npropagate, or modify the data to which it applies.  Unlike standard\nIO operations, the LIO counterparts check the vailidity of labels\nbefore performing the (underlying IO) side-effecting computation.\nFor example, before writing to a labeled variable, LIO asserts that\nthe write will not violate any security policies associated with the\ndata to be written.\n\nMost code should import module \"LIO\" and whichever label format the\napplication is using (e.g., \"LIO.DCLabel\" to use the format that\nships with the library).  Side-effecting code should be specified as\nactions in the 'LIO' monad.  See \"LIO.Core\" for a description of the\ncore library API, \"LIO.Label\" for a discussion of labels, and\n\"LIO.Run\" for functions allowing one to run an 'LIO' computation\nfrom the 'IO' monad.\n\nWARNING:  For security, untrusted code must always be compiled with\nthe @-XSafe@ and @-fpackage-trust@ /SafeHaskell/ flags. See\n<http://www.haskell.org/ghc/docs/latest/html/users_guide/safe-haskell.html>\nfor more details on the guarantees provided by SafeHaskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          ];
        };
      };
    }