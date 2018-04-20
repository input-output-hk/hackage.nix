{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-generate";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 Alp Mestanogullari";
        maintainer = "alpmestan@gmail.com";
        author = "Alp Mestanogullari";
        homepage = "https://github.com/alpmestan/servant-generate";
        url = "";
        synopsis = "Utilities for generating mock server implementations";
        description = "Utilities for generating mock server implementations\n\nSee the documentation of the @Servant.Server.Generate@ module.";
        buildType = "Simple";
      };
      components = {
        servant-generate = {
          depends  = [
            hsPkgs.base
            hsPkgs.servant
            hsPkgs.servant-server
          ];
        };
      };
    }