{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { dev = false; };
    package = {
      specVersion = "2.2";
      identifier = {
        name = "ucam-webauth-types";
        version = "0.1.0.0";
      };
      license = "(BSD-3-Clause OR Apache-2.0)";
      copyright = "2018 David Baynard";
      maintainer = "David Baynard <ucamwebauth@baynard.me>";
      author = "David Baynard <ucamwebauth@baynard.me>";
      homepage = "https://github.com/dbaynard/UcamWebauth#readme";
      url = "";
      synopsis = "Types for the Ucam-Webauth protocol, as used by Raven";
      description = "Types for the implementation of the Ucam-Webauth protocol, as used by the\nUniversity of Cambridge’s Raven authentication service.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.http-types)
          (hsPkgs.microlens)
          (hsPkgs.microlens-mtl)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.timerep)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover)
          ];
        };
      };
    };
  }