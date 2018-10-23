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
        name = "sbp";
        version = "2.2.16";
      };
      license = "LGPL-3.0-only";
      copyright = "Copyright (C) 2015 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "https://github.com/swift-nav/libsbp";
      url = "";
      synopsis = "SwiftNav's SBP Library";
      description = "Haskell bindings for Swift Navigation Binary Protocol (SBP), a fast,\nsimple, and minimal binary protocol for communicating with Swift\ndevices. It is the native binary protocol used by the Piksi GPS\nreceiver to transmit solutions, observations, status and debugging\nmessages, as well as receive messages from the host operating\nsystem, such as differential corrections and the almanac.";
      buildType = "Simple";
    };
    components = {
      "sbp" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.basic-prelude)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.lens)
          (hsPkgs.lens-aeson)
          (hsPkgs.monad-loops)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      exes = {
        "sbp2json" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.binary-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.sbp)
            (hsPkgs.resourcet)
          ];
        };
        "json2sbp" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.binary-conduit)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.sbp)
            (hsPkgs.resourcet)
          ];
        };
        "sbp2yaml" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.basic-prelude)
            (hsPkgs.binary-conduit)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.sbp)
            (hsPkgs.resourcet)
            (hsPkgs.yaml)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base64-bytestring)
            (hsPkgs.basic-prelude)
            (hsPkgs.bytestring)
            (hsPkgs.QuickCheck)
            (hsPkgs.sbp)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
          ];
        };
      };
    };
  }