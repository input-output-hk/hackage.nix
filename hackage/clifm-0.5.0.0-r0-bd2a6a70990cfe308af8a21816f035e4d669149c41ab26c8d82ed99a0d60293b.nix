{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clifm";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "pasqu4le@gmail.com";
      author = "pasqu4le";
      homepage = "https://github.com/pasqu4le/clifm";
      url = "";
      synopsis = "Command Line Interface File Manager";
      description = "A terminal-based File Manager with multiple panes/tabs interface, basic file operations and mouse support.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "clifm" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.brick)
            (hsPkgs.filepath)
            (hsPkgs.vty)
            (hsPkgs.vector)
            (hsPkgs.time)
            (hsPkgs.process)
            (hsPkgs.pointedlist)
            (hsPkgs.byteunits)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.lens)
          ];
        };
      };
    };
  }