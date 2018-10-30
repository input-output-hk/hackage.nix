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
      specVersion = "1.9.2";
      identifier = {
        name = "tftp";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Sven Heyll";
      maintainer = "sven.heyll@gmail.com";
      author = "Sven Heyll";
      homepage = "http://github.com/sheyll/tftp";
      url = "";
      synopsis = "A library for building tftp servers";
      description = "A library for building tftp servers";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.hslogger)
          (hsPkgs.directory)
          (hsPkgs.network)
        ];
      };
      exes = {
        "tftp_upload" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tftp)
            (hsPkgs.hslogger)
            (hsPkgs.directory)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.binary)
          ];
        };
      };
      tests = {
        "message-decoding" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tftp)
            (hsPkgs.QuickCheck)
          ];
        };
        "protocol" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tftp)
            (hsPkgs.hslogger)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
        };
        "udp-io" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tftp)
            (hsPkgs.hslogger)
            (hsPkgs.network)
          ];
        };
      };
    };
  }