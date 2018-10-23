{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "una";
        version = "2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "John Wiegley <johnw@newartisans.com>";
      author = "John Wiegley";
      homepage = "https://github.com/jwiegley/una";
      url = "";
      synopsis = "Universal un-archiver utility";
      description = "A simple universal unarchiving utility.  Just point it at any\narchive or compressed file, and it spits out a single file or\ndirectory in the current directory with its contents.  Use -d to\ndelete the original archive on success.  Use -f to overwrite any\nexisting file or directory which might be in the way.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "una" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.io-storage)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.filepath)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }