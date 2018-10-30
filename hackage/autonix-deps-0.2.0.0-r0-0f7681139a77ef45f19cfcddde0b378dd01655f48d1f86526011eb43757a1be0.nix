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
        name = "autonix-deps";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Thomas Tuegel";
      maintainer = "ttuegel@gmail.com";
      author = "Thomas Tuegel";
      homepage = "";
      url = "";
      synopsis = "Library for Nix expression dependency generation";
      description = "@autonix-deps@ is a library for building automatic dependency detectors for\nsoftware collections to be built using the Nix package manager.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.errors)
          (hsPkgs.filepath)
          (hsPkgs.lens)
          (hsPkgs.libarchive-conduit)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.xml)
        ];
      };
    };
  }