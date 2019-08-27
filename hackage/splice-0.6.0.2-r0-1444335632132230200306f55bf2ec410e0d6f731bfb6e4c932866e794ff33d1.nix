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
    flags = { portable = false; llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "splice"; version = "0.6.0.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2012 Cetin Sert";
      maintainer = "Cetin Sert <fusion@corsis.eu>";
      author = "Cetin Sert <fusion@corsis.eu>";
      homepage = "http://corsis.github.com/splice/";
      url = "";
      synopsis = "Cross-platform Socket to Socket Data Splicing";
      description = "A library that implements most efficient socket to socket\ndata transfer loops for proxy servers on all operating systems.\n\nOn GNU/Linux, it uses the zero-copy @splice()@ system\ncall (<http://kerneltrap.org/node/6505>) and exports it as\n@c_splice@ in @System.IO.Splice.Linux@.\n\nOn other operating systems, it uses a portable Haskell\nimplementation.\n\n[Legal]\nThis work is undertaken by Corsis Research for the development of\nPortFusion \\]-\\[ayabusa (はやぶさ) (Hayabusa)\n(<https://fusion.corsis.eu>) – German-Japanese joint research\nproject for building the simplest and most concise\nhigh-performance distributed reverse / forward proxy application\npossible on commodity hardware and operating systems.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."network" or (buildDepError "network"))
          ] ++ (pkgs.lib).optional (system.isLinux && !flags.portable) (hsPkgs."unix" or (buildDepError "unix"));
        };
      };
    }