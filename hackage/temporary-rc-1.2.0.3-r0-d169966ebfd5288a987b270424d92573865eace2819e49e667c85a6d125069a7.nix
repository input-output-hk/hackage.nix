{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "temporary-rc";
        version = "1.2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2003-2006, Isaac Jones\n(c) 2005-2009, Duncan Coutts";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Isaac Jones <ijones@syntaxpolice.org>\nDuncan Coutts <duncan@haskell.org>";
      homepage = "http://www.github.com/feuerbach/temporary";
      url = "";
      synopsis = "Portable temporary file and directory support for Windows and Unix, based on code from Cabal";
      description = "The functions for creating temporary files and directories in the base library are quite limited. The unixutils\npackage contains some good ones, but they aren't portable to Windows.\nThis library just repackages the Cabal implementations of its own temporary file and folder functions so that\nyou can use them without linking against Cabal or depending on it being installed.\nThis is a better maintained fork of the \"temporary\" package.";
      buildType = "Simple";
    };
    components = {
      "temporary-rc" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }