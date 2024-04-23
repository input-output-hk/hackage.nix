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
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "tar-bytestring"; version = "0.6.3.2"; };
      license = "BSD-3-Clause";
      copyright = "2007 Bjorn Bringert <bjorn@bringert.net>\n2008-2016 Duncan Coutts <duncan@community.haskell.org>\n2020 Julian Ospald <hasufell@posteo.de>";
      maintainer = "Julian Ospald <hasufell@posteo.de>";
      author = "Duncan Coutts <duncan@community.haskell.org>\nBjorn Bringert <bjorn@bringert.net>";
      homepage = "";
      url = "";
      synopsis = "Reading, writing and manipulating \".tar\" archive files.";
      description = "Fork of 'tar' package, which currently breaks\nUnicode filepaths, by utilizing ByteString.Char8.\nThis library is for working with \\\"@.tar@\\\" archive files. It\ncan read and write a range of common variations of archive\nformat including V7, POSIX USTAR and GNU formats.\n\nIt provides support for packing and unpacking portable\narchives. This makes it suitable for distribution but not\nbackup because details like file ownership and exact\npermissions are not preserved.\n\nIt also provides features for random access to archive\ncontent using an index.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hpath-directory" or (errorHandler.buildDepError "hpath-directory"))
          (hsPkgs."hpath-filepath" or (errorHandler.buildDepError "hpath-filepath"))
          (hsPkgs."hpath-posix" or (errorHandler.buildDepError "hpath-posix"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."these" or (errorHandler.buildDepError "these"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
        buildable = if system.isWindows then false else true;
      };
      tests = {
        "properties" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."bytestring-handle" or (errorHandler.buildDepError "bytestring-handle"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."hpath-directory" or (errorHandler.buildDepError "hpath-directory"))
            (hsPkgs."hpath-filepath" or (errorHandler.buildDepError "hpath-filepath"))
            (hsPkgs."hpath-posix" or (errorHandler.buildDepError "hpath-posix"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = if system.isWindows then false else true;
        };
      };
      benchmarks = {
        "bench" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."hpath-directory" or (errorHandler.buildDepError "hpath-directory"))
            (hsPkgs."hpath-filepath" or (errorHandler.buildDepError "hpath-filepath"))
            (hsPkgs."hpath-posix" or (errorHandler.buildDepError "hpath-posix"))
            (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
            (hsPkgs."these" or (errorHandler.buildDepError "these"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."word8" or (errorHandler.buildDepError "word8"))
          ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."unbuildable" or (errorHandler.buildDepError "unbuildable"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "8.0")) (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"));
          buildable = if system.isWindows then false else true;
        };
      };
    };
  }