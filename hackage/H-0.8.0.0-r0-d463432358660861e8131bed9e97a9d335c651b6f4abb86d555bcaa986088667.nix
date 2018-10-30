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
      specVersion = "1.10";
      identifier = {
        name = "H";
        version = "0.8.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2013-2015 Amgen, Inc.\nCopyright (c) 2015 Tweag I/O Limited.";
      maintainer = "Alexander Vershilov <alexander.vershilov@tweag.io>";
      author = "Mathieu Boespflug, Facundo Dominguez, Alexander Vershilov";
      homepage = "";
      url = "";
      synopsis = "The Haskell/R mixed programming environment.";
      description = "This package is part of the HaskellR project.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "H" = {
          depends  = [
            (hsPkgs.inline-r)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.file-embed)
            (hsPkgs.pretty)
            (hsPkgs.process)
            (hsPkgs.temporary)
            (hsPkgs.vector)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.inline-r)
            (hsPkgs.process)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.vector)
            (hsPkgs.singletons)
          ];
        };
      };
    };
  }