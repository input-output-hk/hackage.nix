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
    flags = { old-time = false; old-bytestring = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "tar"; version = "0.5.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2007 Bjorn Bringert <bjorn@bringert.net>\n2008-2016 Duncan Coutts <duncan@community.haskell.org>";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>";
      author = "Duncan Coutts <duncan@community.haskell.org>\nBjorn Bringert <bjorn@bringert.net>";
      homepage = "";
      url = "";
      synopsis = "Reading, writing and manipulating \".tar\" archive files.";
      description = "This library is for working with \\\"@.tar@\\\" archive files. It\ncan read and write a range of common variations of archive\nformat including V7, POSIX USTAR and GNU formats.\n\nIt provides support for packing and unpacking portable\narchives. This makes it suitable for distribution but not\nbackup because details like file ownership and exact\npermissions are not preserved.\n\nIt also provides features for random access to archive\ncontent using an index.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          ] ++ (if flags.old-time
          then [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ]
          else [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."time" or (buildDepError "time"))
            ])) ++ (if flags.old-bytestring
          then [
            (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ]
          else [ (hsPkgs."bytestring" or (buildDepError "bytestring")) ]);
        };
      tests = {
        "properties" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."bytestring-handle" or (buildDepError "bytestring-handle"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            ] ++ (if flags.old-time
            then [
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."old-time" or (buildDepError "old-time"))
              ]
            else [
              (hsPkgs."directory" or (buildDepError "directory"))
              (hsPkgs."time" or (buildDepError "time"))
              ])) ++ (if flags.old-bytestring
            then [
              (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
              (hsPkgs."bytestring" or (buildDepError "bytestring"))
              ]
            else [ (hsPkgs."bytestring" or (buildDepError "bytestring")) ]);
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            ];
          };
        };
      };
    }