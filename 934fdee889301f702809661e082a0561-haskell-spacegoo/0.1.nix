{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "haskell-spacegoo";
          version = "0.1";
        };
        license = "MIT";
        copyright = "2013 Joachim Breitner";
        maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
        author = "Joachim Breitner";
        homepage = "";
        url = "";
        synopsis = "Client API for Rocket Scissor Spacegoo";
        description = "Using this package you can quickly create code to take\npart in a game of Rocket Scissor Spacegoo; see\n<http://spacegoo.rent-a-geek.de/> for more details on the\ngame.";
        buildType = "Simple";
      };
      components = {
        haskell-spacegoo = {
          depends  = [
            hsPkgs.base
            hsPkgs.vector
            hsPkgs.pretty
            hsPkgs.pretty-show
            hsPkgs.aeson
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.network-conduit
            hsPkgs.conduit
            hsPkgs.vector-space
          ];
        };
      };
    }