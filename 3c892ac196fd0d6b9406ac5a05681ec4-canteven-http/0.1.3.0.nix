{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "canteven-http";
          version = "0.1.3.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "rick@owenssoftware.com";
        author = "Rick Owens";
        homepage = "https://github.com/SumAll/canteven-http";
        url = "";
        synopsis = "Utilities for HTTP programming.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "canteven-http" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.canteven-log
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.http-types
            hsPkgs.mime-types
            hsPkgs.monad-logger
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unix
            hsPkgs.uuid
            hsPkgs.wai
            hsPkgs.wai-extra
          ];
        };
      };
    }