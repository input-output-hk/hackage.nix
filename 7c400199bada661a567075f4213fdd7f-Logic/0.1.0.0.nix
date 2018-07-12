{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Logic";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "mail@tanakakazuki.com";
        author = "gogotanaka";
        homepage = "http://gogotanaka.me/";
        url = "";
        synopsis = "Logic";
        description = "";
        buildType = "Simple";
      };
      components = {
        "Logic" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }