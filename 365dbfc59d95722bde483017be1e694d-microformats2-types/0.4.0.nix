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
      specVersion = "1.18";
      identifier = {
        name = "microformats2-types";
        version = "0.4.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "2014-2015 Greg V <greg@unrelenting.technology>";
      maintainer = "greg@unrelenting.technology";
      author = "Greg V";
      homepage = "https://github.com/myfreeweb/microformats2-types";
      url = "";
      synopsis = "Microformats 2 types (with Aeson instances)";
      description = "";
      buildType = "Simple";
    };
    components = {
      "microformats2-types" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.aeson)
          (hsPkgs.pandoc-types)
          (hsPkgs.data-default-class)
          (hsPkgs.setters)
        ];
      };
    };
  }