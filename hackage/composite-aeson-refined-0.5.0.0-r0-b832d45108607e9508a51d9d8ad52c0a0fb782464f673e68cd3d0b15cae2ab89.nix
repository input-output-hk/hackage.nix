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
        name = "composite-aeson-refined";
        version = "0.5.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Confer Health, Inc.";
      maintainer = "oss@confer.care";
      author = "Confer Health, Inc";
      homepage = "https://github.com/ConferHealth/composite#readme";
      url = "";
      synopsis = "composite-aeson support for Refined from the refined package";
      description = "JsonFormat and DefaultJsonFormat for Refined";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson-better-errors)
          (hsPkgs.base)
          (hsPkgs.composite-aeson)
          (hsPkgs.mtl)
          (hsPkgs.refined)
        ];
      };
    };
  }