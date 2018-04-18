{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.16";
        identifier = {
          name = "ihaskell-aeson";
          version = "0.3.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "andrew.gibiansky@gmail.com";
        author = "Andrew Gibiansky";
        homepage = "http://www.github.com/gibiansky/ihaskell";
        url = "";
        synopsis = "IHaskell display instances for Aeson";
        description = "";
        buildType = "Simple";
      };
      components = {
        ihaskell-aeson = {
          depends  = [
            hsPkgs.base
            hsPkgs.here
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.aeson
            hsPkgs.aeson-pretty
            hsPkgs.ihaskell
          ];
        };
      };
    }