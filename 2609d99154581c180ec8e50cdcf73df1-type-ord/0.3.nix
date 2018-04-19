{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6.0.1";
        identifier = {
          name = "type-ord";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        author = "Nicolas Frisby <nicolas.frisby@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Type-level comparison operator";
        description = "Type-level comparison operator with instances for @type-digit@\nnumerals until <http://hackage.haskell.org/trac/ghc/ticket/1894> is resolved.";
        buildType = "Simple";
      };
      components = {
        type-ord = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.type-spine
            hsPkgs.type-digits
          ];
        };
      };
    }