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
        name = "librato";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/SaneTracker/librato";
      url = "";
      synopsis = "Bindings to the Librato API";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.vector)
          (hsPkgs.unordered-containers)
          (hsPkgs.resourcet)
          (hsPkgs.mtl)
          (hsPkgs.http-types)
          (hsPkgs.attoparsec)
          (hsPkgs.uri-templater)
          (hsPkgs.either)
        ];
      };
    };
  }