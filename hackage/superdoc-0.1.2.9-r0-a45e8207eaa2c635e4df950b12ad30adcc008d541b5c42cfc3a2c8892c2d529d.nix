{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.24";
      identifier = { name = "superdoc"; version = "0.1.2.9"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2018 Peter Selinger";
      maintainer = "selinger@mathstat.dal.ca";
      author = "Peter Selinger";
      homepage = "http://www.mathstat.dal.ca/~selinger/superdoc/";
      url = "";
      synopsis = "Additional documentation markup and Unicode support";
      description = "This package extends Cabal's documentation building capabilities.\nIt extends the Haddock markup language with syntax for subscripts,\nsuperscripts, and more. Recent version of Haddock already support\nbold text and the inclusion of images; however, we continue to\nprovide markup for these for backward compatibility with earlier\nversions of Superdoc.\n\nThis package is designed to work transparently. It provides a custom\nmain function that package maintainers can use in their Setup.hs\nfile. In most cases, this is as simple as setting the build-type to\nCustom, adding superdoc to the package dependencies, and putting the\nfollowing two lines into Setup.hs:\n\n> import Distribution.Superdoc\n> main = superdocMain\n\nFor more information on the available markup, see \"Distribution.Superdoc\".";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        };
      };
    }