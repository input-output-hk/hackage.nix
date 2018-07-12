{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "JsonGrammar";
          version = "0.3.1";
        };
        license = "BSD-3-Clause";
        copyright = "Some Rights Reserved (CC) 2010 Martijn van Steenbergen";
        maintainer = "martijn@van.steenbergen.nl";
        author = "Martijn van Steenbergen";
        homepage = "https://github.com/MedeaMelana/JsonGrammar";
        url = "";
        synopsis = "Combinators for bidirectional JSON parsing";
        description = "Combinators for bidirectional JSON parsing";
        buildType = "Simple";
      };
      components = {
        "JsonGrammar" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.aeson
            hsPkgs.semigroups
            hsPkgs.template-haskell
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.time
            hsPkgs.vector
          ];
        };
      };
    }