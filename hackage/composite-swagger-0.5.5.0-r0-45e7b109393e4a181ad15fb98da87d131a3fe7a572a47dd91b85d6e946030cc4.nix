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
      specVersion = "1.12";
      identifier = {
        name = "composite-swagger";
        version = "0.5.5.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.health";
      author = "Confer Health, Inc";
      homepage = "https://github.com/ConferHealth/composite#readme";
      url = "";
      synopsis = "Swagger for Vinyl/Frames records";
      description = "Integration between Swagger and Vinyl/Frames records allowing easily derivable/explicit Swagger definitions for records.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.composite-base)
          (hsPkgs.insert-ordered-containers)
          (hsPkgs.lens)
          (hsPkgs.swagger2)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.vinyl)
        ];
      };
      tests = {
        "composite-swagger-test" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.base)
            (hsPkgs.composite-aeson)
            (hsPkgs.composite-base)
            (hsPkgs.composite-swagger)
            (hsPkgs.hspec)
            (hsPkgs.insert-ordered-containers)
            (hsPkgs.lens)
            (hsPkgs.swagger2)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.vinyl)
          ];
        };
      };
    };
  }