{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "prettyprinter-vty";
          version = "0.1.0.0";
        };
        license = "ISC";
        copyright = "2017 Eric Mertens";
        maintainer = "emertens@gmail.com";
        author = "Eric Mertens";
        homepage = "";
        url = "";
        synopsis = "prettyprinter backend for vty";
        description = "prettyprinter backend for vty";
        buildType = "Simple";
      };
      components = {
        prettyprinter-vty = {
          depends  = [
            hsPkgs.base
            hsPkgs.prettyprinter
            hsPkgs.vty
          ];
        };
      };
    }