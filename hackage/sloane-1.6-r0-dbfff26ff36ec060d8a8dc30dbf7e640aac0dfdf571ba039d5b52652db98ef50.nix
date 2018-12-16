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
      specVersion = "1.6";
      identifier = {
        name = "sloane";
        version = "1.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "anders.claesson@gmail.com";
      author = "Anders Claesson";
      homepage = "http://github.com/akc/sloane";
      url = "";
      synopsis = "A command line interface to Sloane's On-Line Encyclopedia of Integer Sequences";
      description = "A command line interface to Sloane's On-Line Encyclopedia of Integer Sequences.\nFor usage see <http://github.com/akc/sloane>.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "sloane" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.HTTP)
            (hsPkgs.url)
            (hsPkgs.bytestring)
            (hsPkgs.ansi-terminal)
            (hsPkgs.terminal-size)
          ];
        };
      };
    };
  }