{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "filepath"; version = "1.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2005-2015";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/haskell/filepath#readme";
      url = "";
      synopsis = "Library for manipulating FilePaths in a cross platform way.";
      description = "This package provides functionality for manipulating @FilePath@ values, and is shipped with both <https://www.haskell.org/ghc/ GHC> and the <https://www.haskell.org/platform/ Haskell Platform>. It provides three modules:\n\n* \"System.FilePath.Posix\" manipulates POSIX\\/Linux style @FilePath@ values (with @\\/@ as the path separator).\n\n* \"System.FilePath.Windows\" manipulates Windows style @FilePath@ values (with either @\\\\@ or @\\/@ as the path separator, and deals with drives).\n\n* \"System.FilePath\" is an alias for the module appropriate to your platform.\n\nAll three modules provide the same API, and the same documentation (calling out differences in the different variants).";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) ]; };
      tests = {
        "filepath-tests" = {
          depends = [ (hsPkgs.filepath) (hsPkgs.base) (hsPkgs.QuickCheck) ];
          };
        };
      };
    }