{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "0";
        identifier = {
          name = "haskell-lexer";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Thomas Hallgren";
        homepage = "";
        url = "";
        synopsis = "A fully compliant Haskell 98 lexer.";
        description = "A fully compliant Haskell 98 lexer.";
        buildType = "Simple";
      };
      components = {
        haskell-lexer = {
          depends  = [ hsPkgs.base ];
        };
      };
    }