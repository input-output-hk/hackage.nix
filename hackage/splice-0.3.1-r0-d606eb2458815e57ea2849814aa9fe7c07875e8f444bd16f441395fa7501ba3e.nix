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
      identifier = { name = "splice"; version = "0.3.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2012 Cetin Sert";
      maintainer = "Cetin Sert <fusion@corsis.eu>";
      author = "Cetin Sert <fusion@corsis.eu>";
      homepage = "https://github.com/corsis/splice";
      url = "";
      synopsis = "Socket to Socket Data Splicing (supports all operating systems)";
      description = "A library that implements most efficient socket to socket\ndata transfer loops for proxy servers on each operating system.\n\nOn Linux, it uses and exposes the zero-copy @splice()@ system\ncall: <http://kerneltrap.org/node/6505>.\n\nOn other operating systems, it currently falls back to a portable\nHaskell implementation.\n\n[Corsis Research]\nThis work is funded by Corsis Research\n(<http://corsis.eu>) for the development of\n\n[PortFusion \\]-\\[ayabusa (はやぶさ) (Hayabusa)]\n– German-Japanese joint research project for building the\nsimplest and most concise high-performance distributed reverse /\nforward proxy possible\n(<https://sourceforge.net/p/portfusion/wiki/RoadMap/>).";
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