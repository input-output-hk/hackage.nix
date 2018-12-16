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
        name = "composite-ekg";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.care";
      author = "Confer Health, Inc";
      homepage = "https://github.com/ConferHealth/composite#readme";
      url = "";
      synopsis = "EKG Metrics for Vinyl/Frames records";
      description = "Integration between EKG and Vinyl/Frames records allowing records holding registered metrics to be easily constructed from a type declaration.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.basic-prelude)
          (hsPkgs.composite-base)
          (hsPkgs.ekg)
          (hsPkgs.ekg-core)
          (hsPkgs.Frames)
          (hsPkgs.lens)
          (hsPkgs.text)
          (hsPkgs.vinyl)
        ];
      };
    };
  }