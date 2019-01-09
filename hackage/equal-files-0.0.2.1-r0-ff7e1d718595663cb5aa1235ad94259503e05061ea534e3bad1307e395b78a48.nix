{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "equal-files"; version = "0.0.2.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/equal-files";
      url = "";
      synopsis = "Shell command for finding equal files";
      description = "Shell command that finds files with equal content in a given set of files.\nThis is useful for finding duplicates in a set of documents\nwhere the same document might have been stored by accident with different names.\nUse it like\n\n> equal-files `find my_dir -type f`\n\nor\n\n> find my_dir -type f | xargs equal-files\n\nIf the file names contain spaces, better use\n\n> find my_dir -type f -printf \"'%p'\\n\" | xargs equal-files\n\nThe program reads all input files simultaneously,\ndriven by sorting and grouping of their content.\nHowever be prepared that due to the simultaneous access\nyou may exceed the admissible number of opened files.\n\nThe program can be used as a nice example of a declarative\nyet efficient implementation of a non-trivial algorithm,\nthat is enabled by lazy evaluation.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "equal-files" = {
          depends = [ (hsPkgs.bytestring) ] ++ [ (hsPkgs.base) ];
          };
        };
      };
    }