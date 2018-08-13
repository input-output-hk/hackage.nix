{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      test-doctests = true;
      lib-werror = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "lens-aeson";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2012 Paul Wilson\nCopyright (C) 2013 Edward A. Kmett";
      maintainer = "Edward A. Kmett <ekmett@gmail.com>";
      author = "Edward A. Kmett";
      homepage = "http://github.com/lens/lens-aeson/";
      url = "";
      synopsis = "Law-abiding lenses for aeson";
      description = "Law-abiding lenses for aeson";
      buildType = "Custom";
    };
    components = {
      "lens-aeson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
        ];
      };
      tests = {
        "doctests" = {
          depends  = pkgs.lib.optionals (!(!_flags.test-doctests)) [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
            (hsPkgs.generic-deriving)
            (hsPkgs.semigroups)
            (hsPkgs.simple-reflect)
          ];
        };
      };
    };
  }