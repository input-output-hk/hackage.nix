{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ihaskell-blaze";
          version = "0.1.0.0";
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
            hsPkgs.classy-prelude
            hsPkgs.blaze-html
            hsPkgs.blaze-markup
            hsPkgs.ihaskell
          ];
        };
      };
    }