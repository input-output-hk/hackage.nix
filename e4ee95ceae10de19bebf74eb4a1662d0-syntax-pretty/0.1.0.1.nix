{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "syntax-pretty";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "Paweł Nowak 2014";
        maintainer = "Paweł Nowak <pawel834@gmail.com>";
        author = "Paweł Nowak";
        homepage = "";
        url = "";
        synopsis = "Syntax instance for pretty, the pretty printing library.";
        description = "";
        buildType = "Simple";
      };
      components = {
        "syntax-pretty" = {
          depends  = [
            hsPkgs.base
            hsPkgs.syntax
            hsPkgs.pretty
            hsPkgs.semi-iso
            hsPkgs.text
          ];
        };
      };
    }