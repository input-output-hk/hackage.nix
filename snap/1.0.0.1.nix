{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8.0.4";
        identifier = {
          name = "snap";
          version = "1.0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "snap@snapframework.com";
        author = "Ozgun Ataman, Doug Beardsley,\nGregory Collins, Carl Howells, Chris Smith";
        homepage = "http://snapframework.com/";
        url = "";
        synopsis = "Top-level package for the Snap Web Framework";
        description = "This is the top-level package for the official Snap Framework libraries.\nIt includes:\n\n* The Snaplets API\n\n* Snaplets for sessions, authentication, and templates\n\nTo get started, issue the following sequence of commands:\n\n@\$ cabal install snap snap-templates\n\$ mkdir myproject\n\$ cd myproject\n\$ snap init@\n\nIf you have trouble or any questions, see our FAQ page\n(<http://snapframework.com/faq>) or the documentation\n(<http://snapframework.com/docs>).\n\nNote: since version 1.0, the \\\"snap\\\" executable program for generating\nstarter projects is provided by the @snap-templates@ package.";
        buildType = "Simple";
      };
      components = {
        snap = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.clientsession
            hsPkgs.configurator
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.directory-tree
            hsPkgs.dlist
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.heist
            hsPkgs.lens
            hsPkgs.lifted-base
            hsPkgs.map-syntax
            hsPkgs.monad-control
            hsPkgs.mtl
            hsPkgs.mwc-random
            hsPkgs.pwstore-fast
            hsPkgs.snap-core
            hsPkgs.snap-server
            hsPkgs.stm
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.transformers-base
            hsPkgs.unordered-containers
            hsPkgs.xmlhtml
          ];
        };
        tests = {
          testsuite = {
            depends  = [
              hsPkgs.aeson
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.clientsession
              hsPkgs.configurator
              hsPkgs.containers
              hsPkgs.deepseq
              hsPkgs.directory
              hsPkgs.directory-tree
              hsPkgs.dlist
              hsPkgs.filepath
              hsPkgs.Glob
              hsPkgs.hashable
              hsPkgs.heist
              hsPkgs.http-streams
              hsPkgs.HUnit
              hsPkgs.lens
              hsPkgs.lifted-base
              hsPkgs.map-syntax
              hsPkgs.monad-control
              hsPkgs.mtl
              hsPkgs.mwc-random
              hsPkgs.pwstore-fast
              hsPkgs.QuickCheck
              hsPkgs.smallcheck
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.snap
              hsPkgs.stm
              hsPkgs.syb
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
              hsPkgs.test-framework-quickcheck2
              hsPkgs.test-framework-smallcheck
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.transformers-base
              hsPkgs.unordered-containers
              hsPkgs.xmlhtml
            ];
          };
        };
      };
    }