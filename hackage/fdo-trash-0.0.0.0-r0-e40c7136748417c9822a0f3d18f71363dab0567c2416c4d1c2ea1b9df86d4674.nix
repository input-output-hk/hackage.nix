{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "fdo-trash";
        version = "0.0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Emil Karlson";
      maintainer = "Emil Karlson <jekarlson@gmail.com>";
      author = "Emil Karlson <jekarlson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Utilities related to freedesktop Trash standard.";
      description = "Contains utilities to unrm from trash, purge old files from trash and move files to trash.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.unix)
          (hsPkgs.Diff)
          (hsPkgs.parsec)
          (hsPkgs.old-locale)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.url)
          (hsPkgs.time)
        ];
      };
      exes = {
        "fdo-trash" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.fdo-trash)
            (hsPkgs.Diff)
            (hsPkgs.parsec)
            (hsPkgs.old-locale)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.url)
            (hsPkgs.time)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }