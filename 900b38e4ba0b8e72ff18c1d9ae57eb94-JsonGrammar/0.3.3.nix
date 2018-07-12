{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "JsonGrammar";
          version = "0.3.3";
        };
        license = "BSD-3-Clause";
        copyright = "Some Rights Reserved (CC) 2010-2012 Martijn van Steenbergen";
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
            hsPkgs.aeson
            hsPkgs.semigroups
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.hashable
            hsPkgs.text
            hsPkgs.template-haskell
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
      };
    }