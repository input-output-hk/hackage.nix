{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "MoeDict";
          version = "0.0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "audreyt@audreyt.org";
        author = "Audrey Tang";
        homepage = "https://github.com/audreyt/MoeDict.hs";
        url = "";
        synopsis = "Utilities working with MoeDict.tw JSON dataset";
        description = "Utilities working with MoeDict.tw JSON dataset";
        buildType = "Simple";
      };
      components = {
        "MoeDict" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.bytestring
            hsPkgs.base16-bytestring
          ];
        };
      };
    }