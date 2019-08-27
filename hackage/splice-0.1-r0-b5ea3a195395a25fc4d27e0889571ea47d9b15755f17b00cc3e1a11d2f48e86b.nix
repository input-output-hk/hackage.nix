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
    flags = { portable = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "splice"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2012 Cetin Sert";
      maintainer = "Cetin Sert <fusion@corsis.eu>";
      author = "Cetin Sert <fusion@corsis.eu>";
      homepage = "http://fusion.corsis.eu";
      url = "";
      synopsis = "Socket to Socket Data Splicing";
      description = "A library that implements efficient socket to socket\ndata transfer loops for proxy servers.\n\nOn Linux, it uses the zero-copy splice() system call:\n<http://kerneltrap.org/node/6505>.\n\nOn all other operating systems, it currently falls back\nto a portable Haskell implementation that allocates a\nconstant-sized memory buffer before it enters an inner\nloop which then uses hGetBufSome and hPutBuf; this avoids\nlots of tiny allocations as would otherwise be caused by\nrecv and sendAll functions from Network.Socket.ByteString.\n\nThis work has been funded by Corsis Research and is used\nin PortFusion: <http://portfusion.sf.net>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if system.isLinux && !flags.portable
          then [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."unix" or (buildDepError "unix"))
            ]
          else [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."network" or (buildDepError "network"))
            ];
        };
      };
    }