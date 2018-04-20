{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ihaskell-blaze";
          version = "0.3.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "http://www.github.com/gibiansky/ihaskell";
        url = "";
        synopsis = "IHaskell display instances for blaze-html types";
        description = "";
        buildType = "Simple";
      };
      components = {
        ihaskell-blaze = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.ihaskell
          ];
        };
      };
    }