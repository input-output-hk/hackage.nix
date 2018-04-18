{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "split-channel";
          version = "0.1.2.1";
        };
        license = "MIT";
        copyright = "(c) 2012 Leon P Smith";
        maintainer = "leon@melding-monads.com";
        author = "Leon P Smith";
        homepage = "";
        url = "";
        synopsis = "Control.Concurrent.Chan split into sending and receiving halves.";
        description = "";
        buildType = "Simple";
      };
      components = {
        split-channel = {
          depends  = [ hsPkgs.base ];
        };
      };
    }