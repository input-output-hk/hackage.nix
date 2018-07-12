{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      old-base = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "snap";
          version = "0.14.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "Ozgun Ataman, Doug Beardsley, Gregory Collins, Carl Howells, Chris Smith";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "Top-level package for the Snap Web Framework";
        description = "This is the top-level package for the official Snap Framework libraries.\nIt includes:\n\n* The Snaplets API\n\n* The \\\"snap\\\" executable program for generating starter projects\n\n* Snaplets for sessions, authentication, and templates\n\nTo get started, issue the following sequence of commands:\n\n@\$ cabal install snap\n\$ mkdir myproject\n\$ cd myproject\n\$ snap init@\n\nIf you have trouble or any questions, see our FAQ page\n(<http://snapframework.com/faq>) or the documentation\n(<http://snapframework.com/docs>).";
        buildType = "Simple";
      };
      components = {
        "snap" = {
          depends  = [
            hsPkgs.MonadCatchIO-transformers
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.clientsession
            hsPkgs.comonad
            hsPkgs.configurator
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.directory-tree
            hsPkgs.dlist
            hsPkgs.errors
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.heist
            hsPkgs.logict
            hsPkgs.mtl
            hsPkgs.mwc-random
            hsPkgs.pwstore-fast
            hsPkgs.regex-posix
            hsPkgs.snap-core
            hsPkgs.snap-server
            hsPkgs.stm
            hsPkgs.syb
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.unordered-containers
            hsPkgs.vector
            hsPkgs.vector-algorithms
            hsPkgs.xmlhtml
          ] ++ [
            hsPkgs.base
            hsPkgs.lens
          ];
        };
        exes = {
          "snap" = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.directory-tree
              hsPkgs.filepath
              hsPkgs.hashable
              hsPkgs.old-time
              hsPkgs.snap-server
              hsPkgs.template-haskell
              hsPkgs.text
            ];
          };
        };
      };
    }