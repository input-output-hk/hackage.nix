{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.4";
        identifier = {
          name = "pop3-client";
          version = "0.1.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009 Peter van den Brand, Copyright (c) 2011 Tom Rudick (0.1.4)";
        maintainer = "Tom Rudick <tmrudick@gmail.com>";
        author = "Peter van den Brand, Tom Rudick (0.1.4)";
        homepage = "https://github.com/tmrudick/haskell-pop3-client/";
        url = "";
        synopsis = "POP3 Client Library";
        description = "pop3-client provides a Haskell library to implement a POP3 client.\n\n* Simple and safe API: connection is guaranteed to be closed, no need to know the POP3 protocol to use the API\n\n* Standards compliant\n\n* No dependencies (besides base, mtl and network libraries)";
        buildType = "Simple";
      };
      components = {
        pop3-client = {
          depends  = [
            hsPkgs.base
            hsPkgs.network
            hsPkgs.mtl
          ];
        };
      };
    }