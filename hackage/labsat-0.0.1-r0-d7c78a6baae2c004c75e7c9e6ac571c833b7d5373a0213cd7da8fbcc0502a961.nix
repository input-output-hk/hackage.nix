{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.22";
      identifier = {
        name = "labsat";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "Copyright (C) 2015-2018 Swift Navigation, Inc.";
      maintainer = "Swift Navigation <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/labsat";
      url = "";
      synopsis = "LabSat TCP Interface Wrapper";
      description = "labsat provides a wrapper around the LabSat3 TCP interface";
      buildType = "Simple";
    };
    components = {
      "labsat" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.lifted-async)
          (hsPkgs.lifted-base)
          (hsPkgs.scientific)
          (hsPkgs.preamble)
          (hsPkgs.text)
        ];
      };
      exes = {
        "labsat" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.labsat)
            (hsPkgs.optparse-generic)
            (hsPkgs.preamble)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.labsat)
            (hsPkgs.preamble)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }