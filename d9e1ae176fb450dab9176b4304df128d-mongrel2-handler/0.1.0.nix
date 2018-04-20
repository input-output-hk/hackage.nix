{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "mongrel2-handler";
          version = "0.1.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Bardur Arantsson <bardur@scientician.net>";
        author = "Bardur Arantsson";
        homepage = "";
        url = "";
        synopsis = "Mongrel2 Handler Library";
        description = "Mongrel2 Handler Library.";
        buildType = "Simple";
      };
      components = {
        mongrel2-handler = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.blaze-builder
            hsPkgs.blaze-textual
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.http-types
            hsPkgs.text
            hsPkgs.zeromq-haskell
          ];
        };
      };
    }