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
    flags = { examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "linux-file-extents"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      author = "Marios Titas <rednebΑΤgmxDΟΤcom>";
      homepage = "https://github.com/redneb/linux-file-extents";
      url = "";
      synopsis = "Retrieve file fragmentation information under Linux";
      description = "This package provides a simple wrapper around the Linux FIEMAP ioctl.\nIt can be used to retrieve the list of all the extents of any given\nfile, i.e. the area of the disk where the file is actually stored. This is\nsimilar to the @filefrag@ command line tool provided by the @e2fsprogs@\npackage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.hsc2hs.components.exes.hsc2hs or (pkgs.pkgsBuildBuild.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
        ];
        buildable = true;
      };
      exes = {
        "print-extents" = {
          depends = pkgs.lib.optionals (!!flags.examples) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."linux-file-extents" or (errorHandler.buildDepError "linux-file-extents"))
          ];
          buildable = if !flags.examples then false else true;
        };
      };
    };
  }