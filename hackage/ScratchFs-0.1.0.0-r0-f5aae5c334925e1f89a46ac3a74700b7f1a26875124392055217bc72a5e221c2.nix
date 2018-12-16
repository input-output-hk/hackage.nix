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
        name = "ScratchFs";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Falco Hirschenberger <hirsch@bigfoot.de>";
      maintainer = "Falco Hirschenberger <hirsch@bigfoot.de>";
      author = "Falco Hirschenberger <hirsch@bigfoot.de>";
      homepage = "";
      url = "";
      synopsis = "Size limited temp filesystem based on fuse";
      description = "ScratchFS is a FUSE-based filesystem which provides a size-limited directory tree.\nWhen the filesystem is mounted, the user provides a maximum size the target directory and all it's\nsubdirectories may get. All IO operations in the mountdirectory are tracked and the oldest files in the watchdirectory get deleted automatically.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "ScratchFs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HFuse)
            (hsPkgs.hsyslog)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.regex-compat)
            (hsPkgs.filepath)
            (hsPkgs.sqlite-simple)
            (hsPkgs.process)
          ];
        };
      };
    };
  }