{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "lio-simple";
          version = "0.0.2.1";
        };
        license = "LGPL-3.0-only";
        copyright = "";
        maintainer = "hails@scs.stanford.edu";
        author = "Hails team";
        homepage = "http://simple.cx";
        url = "";
        synopsis = "LIO support for the Simple web framework";
        description = "\\lio-simple\\ adds LIO support for the \\Simple\\ \\\"framework-less\\\"\nweb framework.  \\Simple\\ is minimalist, providing a lightweight base\n- the most basic \\Simple\\ app is little more than a WAI\n`Application` with some routing logic. Everything else (e.g.\nauthentication, controllers, persistence, caching etc\\') is provided\nin composable units, so you can include only the ones you need in\nyour app, and easily replace with your own components.\nLIO is an information flow control library that lets you enforce\nvarious security policies, including mandatory and discretionary\naccess control.\n\nTo get started, create an app skeleton with the `lio-simple` utility:\n\n@\n\$ cabal install lio-simple\n\$ lio-simple my_app_name\n\$ cd my_app_name\n\$ cabal run\n@";
        buildType = "Simple";
      };
      components = {
        lio-simple = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.conduit
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.lio
            hsPkgs.simple
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
            hsPkgs.http-types
            hsPkgs.base64-bytestring
            hsPkgs.simple-templates
            hsPkgs.text
          ];
        };
        exes = {
          lio-simple = {
            depends  = [
              hsPkgs.base
              hsPkgs.aeson
              hsPkgs.attoparsec
              hsPkgs.bytestring
              hsPkgs.cmdargs
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.simple-templates
              hsPkgs.text
              hsPkgs.unordered-containers
            ];
          };
        };
      };
    }