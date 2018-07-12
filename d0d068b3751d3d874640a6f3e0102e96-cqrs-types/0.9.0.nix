{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "cqrs-types";
          version = "0.9.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Command-Query Responsibility Segregation. Modules for the basic types.";
        description = "Haskell implementation of the CQRS architectural pattern.";
        buildType = "Simple";
      };
      components = {
        "cqrs-types" = {
          depends  = [
            hsPkgs.base
            hsPkgs.base16-bytestring
            hsPkgs.base64-bytestring
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.deepseq
            hsPkgs.derive
            hsPkgs.random
          ];
        };
      };
    }