{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ntrip-client";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2016 Swift Navigation, Inc.";
      maintainer = "Mark Fine <dev@swiftnav.com>";
      author = "Swift Navigation Inc.";
      homepage = "";
      url = "";
      synopsis = "NTRIP client.";
      description = "Networked Transport of RTCM via Internet Protocol client.";
      buildType = "Simple";
    };
    components = {
      "ntrip-client" = {
        depends  = [
          (hsPkgs.async)
          (hsPkgs.async)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.basic-prelude)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.http-types)
        ];
      };
    };
  }