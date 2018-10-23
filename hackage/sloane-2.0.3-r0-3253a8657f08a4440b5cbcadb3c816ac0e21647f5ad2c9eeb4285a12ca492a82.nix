{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.9.2";
      identifier = {
        name = "sloane";
        version = "2.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anders.claesson@gmail.com";
      author = "Anders Claesson";
      homepage = "http://github.com/akc/sloane";
      url = "";
      synopsis = "A command line interface to Sloane's On-Line Encyclopedia\nof Integer Sequences";
      description = "A command line interface to Sloane's On-Line Encyclopedia\nof Integer Sequences. For usage see\n<http://github.com/akc/sloane>.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "sloane" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
            (hsPkgs.download-curl)
            (hsPkgs.HTTP)
            (hsPkgs.cereal)
            (hsPkgs.network)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.ansi-terminal)
            (hsPkgs.terminal-size)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }