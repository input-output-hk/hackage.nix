{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "type-spine";
          version = "0.2.20120924";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A spine-view on types";
        description = "This is very much a \\\"bumping up\\\" of the term-level /spine view/,\nc.f. Hinze's work and Emil Axelsson's hackage package @syntactic@.\n\nSee the @type-cereal@ and @type-ord@ packages for use cases (ultimately\nsupporting the @yoko@ package).";
        buildType = "Simple";
      };
      components = {
        type-spine = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
          ];
        };
      };
    }