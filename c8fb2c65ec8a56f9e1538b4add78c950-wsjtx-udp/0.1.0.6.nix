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
        name = "wsjtx-udp";
        version = "0.1.0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Marc.Fontaine@gmx.de";
      author = "Marc Fontaine";
      homepage = "https://github.com/MarcFontaine/wsjtx-udp";
      url = "";
      synopsis = "WSJT-X UDP protocol";
      description = "Utilities for the WSJT-X UDP protocol.\nEncoding and decoding USP packages to binary and JSON and a UDP server.";
      buildType = "Simple";
    };
    components = {
      "wsjtx-udp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.binary)
          (hsPkgs.binary-parsers)
          (hsPkgs.aeson)
          (hsPkgs.network)
        ];
      };
      exes = {
        "wsjtx-dump-udp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.wsjtx-udp)
          ];
        };
      };
    };
  }