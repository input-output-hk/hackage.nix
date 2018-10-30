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
        name = "proto-lens-arbitrary";
        version = "0.1.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "Google Inc.";
      maintainer = "agrue+protolens@google.com";
      author = "Aden Grue";
      homepage = "https://github.com/google/proto-lens#readme";
      url = "";
      synopsis = "Arbitrary instances for proto-lens.";
      description = "The proto-lens-arbitrary allows generating arbitrary messages for use with QuickCheck.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.QuickCheck)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.lens-family)
          (hsPkgs.proto-lens)
          (hsPkgs.text)
        ];
      };
    };
  }