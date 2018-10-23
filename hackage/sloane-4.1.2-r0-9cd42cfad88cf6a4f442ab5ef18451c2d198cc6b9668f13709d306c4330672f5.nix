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
        version = "4.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anders.claesson@gmail.com";
      author = "Anders Claesson";
      homepage = "http://github.com/akc/sloane";
      url = "";
      synopsis = "A command line interface to Sloane's OEIS.";
      description = "A command line interface to Sloane's On-Line Encyclopedia of\nInteger Sequences with offline capabilities.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "sloane" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.ansi-terminal)
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bloomfilter)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.optparse-applicative)
            (hsPkgs.stringsearch)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }