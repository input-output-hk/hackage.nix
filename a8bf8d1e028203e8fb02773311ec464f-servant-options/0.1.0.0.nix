{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-options";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "2017 Lyndon Maydwell";
        maintainer = "maydwell@gmail.com";
        author = "Lyndon Maydwell";
        homepage = "https://github.com/sordina/servant-options";
        url = "";
        synopsis = "Provide responses to OPTIONS requests for Servant applications.";
        description = "Provide responses to OPTIONS requests for Servant applications.";
        buildType = "Simple";
      };
      components = {
        servant-options = {
          depends  = [
            hsPkgs.base
            hsPkgs.servant-server
            hsPkgs.servant-foreign
            hsPkgs.wai
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.http-types
          ];
        };
      };
    }