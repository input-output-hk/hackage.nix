{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pathtype"; version = "0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ben@moseley.name";
      author = "Ben Moseley";
      homepage = "http://code.haskell.org/pathtype";
      url = "";
      synopsis = "Type-safe replacement for System.FilePath etc";
      description = "This package provides type-safe access to filepath manipulations.\n\n\"System.Path\" is designed to be used instead of \"System.FilePath\".\n(It is intended to provide versions of functions from that\nmodule which have equivalent functionality but are more\ntypesafe). \"System.Path.Directory\" is a companion module\nproviding a type-safe alternative to \"System.Directory\".\n\nThe heart of this module is the @'Path' ar fd@ abstract type which\nrepresents file and directory paths. The idea is that there are\ntwo phantom type parameters - the first should be 'Abs' or 'Rel',\nand the second 'File' or 'Dir'. A number of type synonyms are\nprovided for common types:\n\n> type AbsFile     = Path Abs File\n> type RelFile     = Path Rel File\n> type AbsDir      = Path Abs Dir\n> type RelDir      = Path Rel Dir\n>\n> type AbsPath  fd = Path Abs fd\n> type RelPath  fd = Path Rel fd\n> type FilePath ar = Path ar File\n> type DirPath  ar = Path ar Dir\n\nThe type of the 'combine' (aka '</>') function gives the idea:\n\n> (</>) :: DirPath ar -> RelPath fd -> Path ar fd\n\nTogether this enables us to give more meaningful types to\na lot of the functions, and (hopefully) catch a bunch more\nerrors at compile time.\n\nOverloaded string literals are supported, so with the @OverloadedStrings@\nextension enabled, you can:\n\n> f :: FilePath ar\n> f = \"tmp\" </> \"someFile\" <.> \"ext\"\n\nIf you don't want to use @OverloadedStrings@, you can use the construction fns:\n\n> f :: FilePath ar\n> f = asDirPath \"tmp\" </> asFilePath \"someFile\" <.> \"ext\"\n\nor...\n\n> f :: FilePath ar\n> f = asPath \"tmp\" </> asPath \"someFile\" <.> \"ext\"\n\nor just...\n\n> f :: FilePath ar\n> f = asPath \"tmp/someFile.ext\"\n\nOne point to note is that whether one of these is interpreted as\nan absolute or a relative path depends on the type at which it is\nused:\n\n> *System.Path> f :: AbsFile\n> /tmp/someFile.ext\n> *System.Path> f :: RelFile\n> tmp/someFile.ext\n\nYou will typically want to import as follows:\n\n> import Prelude hiding (FilePath)\n> import System.Path\n> import System.Path.Directory\n> import System.Path.IO\n\nThe basic API (and properties satisfied) are heavily influenced\nby Neil Mitchell's \"System.FilePath\" module.\n\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          ];
        buildable = true;
        };
      };
    }