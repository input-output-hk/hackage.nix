{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "abeson";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "(c) 2014 Hirotomo Moriwaki";
        maintainer = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        author = "HirotomoMoriwaki<philopon.dependence@gmail.com>";
        homepage = "https://github.com/philopon/abeson";
        url = "";
        synopsis = "interconversion between aeson and bson.";
        description = "";
        buildType = "Simple";
      };
      components = {
        abeson = {
          depends  = [
            hsPkgs.base
            hsPkgs.data-default-class
            hsPkgs.aeson
            hsPkgs.bson
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.uuid
            hsPkgs.scientific
            hsPkgs.time
          ];
        };
      };
    }