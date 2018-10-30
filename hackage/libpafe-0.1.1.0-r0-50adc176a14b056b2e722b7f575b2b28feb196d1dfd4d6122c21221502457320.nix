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
        name = "libpafe";
        version = "0.1.1.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "haru2036@gmail.com";
      author = "haru2036";
      homepage = "";
      url = "";
      synopsis = "Wrapper for libpafe";
      description = "Wrapper for Pasori library libpafe";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
        libs = [ (pkgs."pafe") ];
      };
      tests = {
        "test-read" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.libpafe)
            (hsPkgs.bytestring)
            (hsPkgs.iconv)
            (hsPkgs.transformers)
          ];
        };
        "test-read-fcf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.libpafe)
            (hsPkgs.bytestring)
            (hsPkgs.iconv)
          ];
        };
      };
    };
  }