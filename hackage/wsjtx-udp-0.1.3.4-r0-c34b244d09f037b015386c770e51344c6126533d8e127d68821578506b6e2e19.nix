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
        name = "wsjtx-udp";
        version = "0.1.3.4";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.network)
          (hsPkgs.binary)
          (hsPkgs.binary-parsers)
        ];
      };
      exes = {
        "wsjtx-dump-udp" = {
          depends = pkgs.lib.optionals (!(compiler.isGhcjs && true)) [
            (hsPkgs.base)
            (hsPkgs.wsjtx-udp)
          ];
        };
      };
    };
  }