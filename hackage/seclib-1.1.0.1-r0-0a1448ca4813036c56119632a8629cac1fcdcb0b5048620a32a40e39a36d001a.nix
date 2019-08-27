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
      identifier = { name = "seclib"; version = "1.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "russo@chalmers.se";
      author = "Alejandro Russo";
      homepage = "";
      url = "";
      synopsis = "A simple library for static information-flow security in Haskell";
      description = "This package presents a static library to enforce\n/Information-Flow Control/ (IFC) in Haskell.\nIFC allows untrusted code to manipulate sensitive\ndata (i.e., secret information), while preserving its confidentiality.\n\nTo illustrate the use case scenario for /SecLib/, let us consider two Haskell\nprogrammers , Alice and Bob, who do not trust each other. Image that Alice\nwishes to use Bob's code to check the strength of Alice's sensitive passwords.\nClearly, Alice is concern that the passwords could be leaked if they are run\nwith Bob's code. How could Alice be sure that Bob's code will preserve the\nconfidentiality of Alice's password? One option is to do code review---a very\ntime consuming approach. Instead, Alice demands that Bob's code uses the\nsecurity monads provided by this library (i.e., 'Sec' and 'SecIO'). Now, Alice\nonly requires, by using the type-system, that Bob's code is written using such\nmonads. Importantly, Alice needs to use Safe Haskell to compile Bob's\nuntrusted code using the flags @-XSafe@. This package provides the files\n@Alice.hs@ and @Bob.hs@. The former calls into functions provided by the\nlatter and the library guarantees that secrets are not unintentionally or\nmaliciously leaked.\n\nThe library is a modern and simplified version (updated to exploit the last\nGHC type-system features) of the work presented in\n/A Library for Light-weight Information-Flow Security in Haskell/ by\nAlejandro Russo, Koen Claessen and\nJohn Hughes. In Proc. of the ACM SIGPLAN 2008 Haskell Symposium. With respect\nto the version 1.0.0.0, this version has less side-effectful features (e.g.,\nno secure file handlers and sockets) as well as declassification combinators. However,\nit presents a simpler and more intuitive interface which can be easily\nextended to cover a rich-set of side-effects.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs."base" or (buildDepError "base")) ]; };
      };
    }