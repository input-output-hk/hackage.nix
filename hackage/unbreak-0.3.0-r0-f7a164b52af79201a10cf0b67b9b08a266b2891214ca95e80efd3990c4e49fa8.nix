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
      specVersion = "1.18";
      identifier = {
        name = "unbreak";
        version = "0.3.0";
      };
      license = "AGPL-3.0-only";
      copyright = "Copyright (C) 2015 Kinoru";
      maintainer = "xkinoru@gmail.com";
      author = "Kinoru";
      homepage = "";
      url = "";
      synopsis = "Secure editing of remote documents with unstable connection";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.cryptonite)
          (hsPkgs.memory)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.unix)
          (hsPkgs.base)
        ];
      };
      exes = {
        "unbreak" = {
          depends = [
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.unbreak)
            (hsPkgs.base)
          ];
        };
      };
    };
  }