{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snaplet-redson";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<dima@dzhus.org>";
        author = "Dmitry Dzhus";
        homepage = "https://github.com/dzhus/snaplet-redson/";
        url = "";
        synopsis = "CRUD for JSON data with Redis storage";
        description = "This snaplet provides HTTP API to /c/reate, /r/ead,\n/u/pdate and /d/elete JSON objects sent by client\nand stored in Redis key-value cache. CRUD methods\nare mapped to HTTP `POST`, `GET`, `PUT` and\n`DELETE`. Valid objects are described using model\ndefinition syntax, which includes information on\nfields and permissions. The snaplet supports\nrole-based user permissions system as implemented\nby Snap authentication. Model definitions may\nalso be used by browser JavaScript to provide\ninterface to create or edit objects.\nThere is a permission-less transparent mode,\nWebSocket create/delete notifications and\ntimeline method to serve information about\nrecently added objects. Ad-hoc search is\nimplemented in Redis and provided via snaplet\nroute.\nThere's a \"snapless\" part of the package, which\nimplements Snap-agnostic Redis CRUD operations\nfor key-value pair collections and may be used\nfor tools which operate with storage directly\nwithout using web framework.\nMore of usage documentation is contained in\n<https://github.com/dzhus/snaplet-redson/blob/master/README.org>";
        buildType = "Simple";
      };
      components = {
        snaplet-redson = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.configurator
            hsPkgs.containers
            hsPkgs.data-lens
            hsPkgs.data-lens-template
            hsPkgs.easy-file
            hsPkgs.hedis
            hsPkgs.mtl
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.snaplet-redis
            hsPkgs.text
            hsPkgs.utf8-string
            hsPkgs.websockets
            hsPkgs.websockets-snap
          ];
        };
      };
    }