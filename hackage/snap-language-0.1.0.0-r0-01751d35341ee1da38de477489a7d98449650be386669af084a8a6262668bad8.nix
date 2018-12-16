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
      specVersion = "1.22";
      identifier = {
        name = "snap-language";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jon.petter.bergman@gmail.com";
      author = "Petter Bergman";
      homepage = "https://github.com/jonpetterbergman/snap-accept-language";
      url = "";
      synopsis = "Language handling for Snap";
      description = "Language handling for Snap.\n\nSupport for determining the client's prefered language using\nthe Accept-Language header or using suffixes to the requested URI.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.snap-core)
          (hsPkgs.containers)
        ];
      };
    };
  }