{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "syntax-printer";
          version = "1.0.0.0";
        };
        license = "MIT";
        copyright = "Paweł Nowak 2014";
        maintainer = "Paweł Nowak <pawel834@gmail.com>";
        author = "Paweł Nowak";
        homepage = "";
        url = "";
        synopsis = "Text and ByteString printers for 'syntax'.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "syntax-printer" = {
          depends  = [
            hsPkgs.base
            hsPkgs.semi-iso
            hsPkgs.syntax
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.scientific
            hsPkgs.bifunctors
            hsPkgs.semigroupoids
            hsPkgs.vector
          ];
        };
      };
    }