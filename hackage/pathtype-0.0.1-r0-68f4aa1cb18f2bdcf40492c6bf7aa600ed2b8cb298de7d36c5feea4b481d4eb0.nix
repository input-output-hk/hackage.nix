{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "pathtype";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ben@moseley.name";
      author = "Ben Moseley";
      homepage = "";
      url = "";
      synopsis = "Type-safe replacement for System.FilePath etc";
      description = "This module provides type-safe access to filepath manipulations.\n\nIt is designed to be imported instead of 'System.FilePath' and\n'System.Directory' and is intended to provide versions of\nfunctions from those modules which have equivalent functionality\nbut are more typesafe.\n\nThe heart of this module is the @Path ar fd@ abstract type which\nrepresents file and directory paths. The idea is that there are\ntwo phantom type parameters - the first should be 'Abs' or 'Rel',\nand the second 'File' or 'Dir'. A number of type synonyms are\nprovided for common types:\n\n> type AbsFile    = Path Abs File\n> type RelFile    = Path Rel File\n> type AbsDir     = Path Abs Dir\n> type RelDir     = Path Rel Dir\n> type RelPath fd = Path Rel fd\n> type DirPath ar = Path ar Dir\n\nThe type of the 'combine' (aka '</>') function gives the idea:\n\n> (</>) :: DirPath ar -> RelPath fd -> Path ar fd\n\nTogether this enables us to give more meaningful types to\na lot of the functions, and (hopefully) catch a bunch more\nerrors at compile time.\n\nThe basic API (and properties satisfied) are heavily influenced\nby Neil Mitchell's 'System.FilePath' module.\n\nWARNING -- THE API IS NOT YET STABLE -- WARNING";
      buildType = "Simple";
    };
    components = {
      "pathtype" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }