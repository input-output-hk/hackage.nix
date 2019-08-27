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
    flags = { logging = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "roshask"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Anthony Cowley";
      maintainer = "Anthony Cowley <acowley@seas.upenn.edu>";
      author = "Anthony Cowley";
      homepage = "http://github.com/acowley/roshask";
      url = "";
      synopsis = "Haskell support for the ROS robotics framework.";
      description = "Tools for working with ROS in Haskell.\n\nROS (<http://www.ros.org>) is a software\nframework developed by Willow Garage\n(<http://http://www.willowgarage.com/>) that aims\nto provide a standard software architecture for\nrobotic systems. The main idea of the framework\nis to support the development and execution of\nloosely coupled /Node/s connected by typed\n/Topic/s. Each Node represents a locus of\nprocessing, ideally with a minimal interface\nspecified in terms of the types of Topics it\ntakes as input and offers as output.\n\nThis package provides libraries for creating new\nROS Nodes in Haskell, along with the @roshask@\nexecutable for creating new ROS packages and\ngenerating Haskell code from message definition\nfiles (see the ROS documentation for information\non message types).\n\nSee\n<http://github.com/acowley/roshask/wiki> for more\ninformation on getting started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."BoundedChan" or (buildDepError "BoundedChan"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."SafeSemaphore" or (buildDepError "SafeSemaphore"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."snap-server" or (buildDepError "snap-server"))
          (hsPkgs."storable-tuple" or (buildDepError "storable-tuple"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."haxr" or (buildDepError "haxr"))
          (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
          (hsPkgs."uri" or (buildDepError "uri"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."filemanip" or (buildDepError "filemanip"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."xml" or (buildDepError "xml"))
          (hsPkgs."directory" or (buildDepError "directory"))
          ] ++ (pkgs.lib).optional (flags.logging) (hsPkgs."template-haskell" or (buildDepError "template-haskell"))) ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or (buildDepError "unix"));
        };
      exes = {
        "roshask" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."xml" or (buildDepError "xml"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."filemanip" or (buildDepError "filemanip"))
            (hsPkgs."data-default-generics" or (buildDepError "data-default-generics"))
            (hsPkgs."roshask" or (buildDepError "roshask"))
            ];
          };
        };
      tests = {
        "testexe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."roshask" or (buildDepError "roshask"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            ];
          };
        "servicetest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."roshask" or (buildDepError "roshask"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."pureMD5" or (buildDepError "pureMD5"))
            (hsPkgs."data-default-generics" or (buildDepError "data-default-generics"))
            (hsPkgs."testpack" or (buildDepError "testpack"))
            ];
          };
        };
      };
    }