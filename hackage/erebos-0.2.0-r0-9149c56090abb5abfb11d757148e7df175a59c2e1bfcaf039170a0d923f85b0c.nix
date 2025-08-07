{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = { ice = true; ci = false; cryptonite = false; };
    package = {
      specVersion = "3.0";
      identifier = { name = "erebos"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "roman.smrz@seznam.cz";
      author = "Roman Smrž <roman.smrz@seznam.cz>";
      homepage = "https://erebosprotocol.net/erebos";
      url = "";
      synopsis = "Decentralized messaging and synchronization";
      description = "Library and simple CLI interface implementing the Erebos identity\nmanagement, decentralized messaging and synchronization protocol, along\nwith local storage.\n\nErebos identity is based on locally stored cryptographic keys, all\ncommunication is end-to-end encrypted. Multiple devices can be attached to\nthe same identity, after which they function interchangeably, without any\none being in any way \"primary\"; messages and other state data are then\nsynchronized automatically whenever the devices are able to connect with\none another.\n\nSee README for usage of the CLI tool.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."clock" or (errorHandler.buildDepError "clock"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."fsnotify" or (errorHandler.buildDepError "fsnotify"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."hashtables" or (errorHandler.buildDepError "hashtables"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          (hsPkgs."zlib" or (errorHandler.buildDepError "zlib"))
        ] ++ (if !flags.cryptonite
          then [ (hsPkgs."crypton" or (errorHandler.buildDepError "crypton")) ]
          else [
            (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
          ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        pkgconfig = pkgs.lib.optional (flags.ice) (pkgconfPkgs."libpjproject" or (errorHandler.pkgConfDepError "libpjproject"));
        build-tools = pkgs.lib.optional (flags.ice) (hsPkgs.pkgsBuildBuild.c2hs.components.exes.c2hs or (pkgs.pkgsBuildBuild.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")));
        buildable = true;
      };
      exes = {
        "erebos" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."erebos" or (errorHandler.buildDepError "erebos"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
            (hsPkgs."websockets" or (errorHandler.buildDepError "websockets"))
          ] ++ (if !flags.cryptonite
            then [
              (hsPkgs."crypton" or (errorHandler.buildDepError "crypton"))
            ]
            else [
              (hsPkgs."cryptonite" or (errorHandler.buildDepError "cryptonite"))
            ]);
          buildable = true;
        };
      };
    };
  }