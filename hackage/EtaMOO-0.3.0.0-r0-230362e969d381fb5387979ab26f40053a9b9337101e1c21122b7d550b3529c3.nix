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
    flags = { llvm = false; 64bit = false; outbound-network = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "EtaMOO"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2014–2016 Robert Leslie";
      maintainer = "Rob Leslie <rob@mars.org>";
      author = "Rob Leslie <rob@mars.org>";
      homepage = "http://verement.github.io/etamoo";
      url = "";
      synopsis = "A new implementation of the LambdaMOO server";
      description = "LambdaMOO is a network-accessible, multi-user, programmable, interactive\nsystem well-suited to the construction of text-based adventure games,\nconferencing systems, and other collaborative software.\n\nEtaMOO is an experimental multithreaded implementation of LambdaMOO in\nHaskell with LMDB-backed persistence and anticipated ready support for\nUnicode MOO strings and 64-bit MOO integers. The implementation follows the\nspecifications of the LambdaMOO Programmer's Manual, and should be\ncompatible with most LambdaMOO databases as of about version 1.8.3 of the\nLambdaMOO server code.\n\n/N.B./ This software is still under development and not fully complete.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "etamoo" = {
          depends = [
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."haskeline" or (buildDepError "haskeline"))
            (hsPkgs."memory" or (buildDepError "memory"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-concurrency" or (buildDepError "pipes-concurrency"))
            (hsPkgs."pipes-network" or (buildDepError "pipes-network"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."unix" or (buildDepError "unix"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vcache" or (buildDepError "vcache"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          libs = (pkgs.lib).optional (!system.isOsx) (pkgs."crypt" or (sysDepError "crypt"));
          pkgconfig = [
            (pkgconfPkgs."libpcre" or (pkgConfDepError "libpcre"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or (buildToolDepError "hsc2hs")))
            ];
          };
        };
      };
    }