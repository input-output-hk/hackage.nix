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
      specVersion = "1.2";
      identifier = { name = "make-hard-links"; version = "0.1"; };
      license = "LicenseRef-GPL";
      copyright = "(c) 2009 Felipe A. Lessa";
      maintainer = "felipe.lessa@gmail.com";
      author = "Felipe Almeida Lessa";
      homepage = "";
      url = "";
      synopsis = "Change duplicated files into hard-links.";
      description = "This program is capable of finding duplicated files and turning\none of them into a hard link to the other, effectively reducing\nthe space usage (as the data will not be duplicated in the disk).\nIt works only on POSIXish systems, and was tested in GNU/Linux only.\n\nWARNING: As the duplicated files will point to each other, if one\nof them is modified then the other will as well! You should use\nmake-hard-links only if the files won't be modified, only renamed,\nremoved, or created.\n\nThe author had a Maildir with lots of duplicated files, and in\nhis case make-hard-links was capable of reducing the space usage\nin 29% (as measured by \"du -hcs\" and \"du -hcs -l\"). As a final note,\nthis program currently has a high memory usage as it has to maintain\ninformation about all the files that are possibly duplicates in\nmemory at once (the author measured 1.7 GiB of memory for about\n300.000 files).";
      buildType = "Simple";
    };
    components = {
      exes = {
        "make-hard-links" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
          buildable = true;
        };
      };
    };
  }