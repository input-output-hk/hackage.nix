{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "error-continuations";
          version = "0.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "eitan.chatav@gmail.com";
        author = "Eitan Chatav";
        homepage = "https://github.com/echatav/error-continuations";
        url = "";
        synopsis = "Error Continuations";
        description = "";
        buildType = "Simple";
      };
      components = {
        error-continuations = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.either
          ];
        };
      };
    }