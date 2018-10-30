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
        name = "superdoc";
        version = "0.1.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2016 Peter Selinger";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Peter Selinger";
      homepage = "http://www.mathstat.dal.ca/~selinger/superdoc/";
      url = "";
      synopsis = "Additional documentation markup and Unicode support";
      description = "This package extends Cabal's documentation building capabilities.\nIt extends the Haddock markup language with syntax for subscripts,\nsuperscripts, bold text, non-breaking spaces, and images. Moreover,\nit works around various bugs in Haddock's and HsColour's Unicode\nsupport, making it possible to use UTF8 encodings in both source\ncode and documentation comments.\n\nThis package is designed to work transparently. It provides a custom\nmain function that package maintainers can use in their Setup.hs\nfile. In most cases, this is as simple as setting the build-type to\nCustom, adding superdoc to the package dependencies, and putting the\nfollowing two lines into Setup.hs:\n\n> import Distribution.Superdoc\n> main = superdocMain\n\nFor more information on the available markup, see \"Distribution.Superdoc\".";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "superdoc-armor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.superdoc)
          ];
        };
      };
    };
  }