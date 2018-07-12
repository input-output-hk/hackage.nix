{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      builddemo = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "bugzilla";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright 2014 Seth Fowler";
        maintainer = "mark.seth.fowler@gmail.com";
        author = "Seth Fowler";
        homepage = "https://github.com/sethfowler/hsbugzilla";
        url = "";
        synopsis = "A Haskell interface to the Bugzilla native REST API";
        description = "This package is designed to provide an easy-to-use, typesafe\ninterface to querying Bugzilla from Haskell.";
        buildType = "Simple";
      };
      components = {
        "bugzilla" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.connection
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.http-conduit
            hsPkgs.http-types
            hsPkgs.iso8601-time
            hsPkgs.resourcet
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          "bugzilla" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bugzilla
              hsPkgs.containers
              hsPkgs.text
              hsPkgs.time
            ];
          };
        };
      };
    }