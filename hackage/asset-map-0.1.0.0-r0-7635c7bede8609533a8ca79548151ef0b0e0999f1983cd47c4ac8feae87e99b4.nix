{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "asset-map";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Ian Duncan";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "https://github.com/iand675/aeson-asset-map#readme";
      url = "";
      synopsis = "Asset map support for the JavaScript broccoli-asset-rev library.";
      description = "Asset map support for the JavaScript broccoli-asset-rev library.";
      buildType = "Simple";
    };
    components = {
      "asset-map" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
          (hsPkgs.th-lift-instances)
          (hsPkgs.containers)
          (hsPkgs.filepath)
        ];
      };
      tests = {
        "aeson-asset-map-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.asset-map)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }