{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ihaskell-magic";
          version = "0.3.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Adam Vogt";
        homepage = "http://www.github.com/gibiansky/IHaskell";
        url = "";
        synopsis = "IHaskell display instances for bytestrings";
        description = "";
        buildType = "Simple";
      };
      components = {
        ihaskell-magic = {
          depends  = [
            hsPkgs.base
            hsPkgs.magic
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.base64-bytestring
            hsPkgs.ipython-kernel
            hsPkgs.ihaskell
          ];
        };
      };
    }