{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "snap-extras";
          version = "0.12.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "oz@soostone.com";
        author = "Ozgun Ataman, Doug Beardsley";
        homepage = "";
        url = "";
        synopsis = "A collection of useful helpers and utilities for Snap web applications.";
        description = "This package contains a collection of helper functions\nthat come in handy in most practical, real-world\napplications. Check individual modules to understand\nwhat's here. You can simply import Snap.Extras and use\nthe initializer in there to get them all at once.";
        buildType = "Simple";
      };
      components = {
        snap-extras = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.case-insensitive
            hsPkgs.configurator
            hsPkgs.containers
            hsPkgs.data-default
            hsPkgs.digestive-functors
            hsPkgs.digestive-functors-heist
            hsPkgs.digestive-functors-snap
            hsPkgs.directory-tree
            hsPkgs.filepath
            hsPkgs.heist
            hsPkgs.jmacro
            hsPkgs.lens
            hsPkgs.mtl
            hsPkgs.pcre-light
            hsPkgs.readable
            hsPkgs.safe
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.text
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.wl-pprint-text
            hsPkgs.xmlhtml
            hsPkgs.map-syntax
          ];
        };
        exes = {
          PollExample = {
            depends  = pkgs.lib.optionals (!(!_flags.examples)) [
              hsPkgs.aeson
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.heist
              hsPkgs.lens
              hsPkgs.mtl
              hsPkgs.readable
              hsPkgs.snap
              hsPkgs.snap-core
              hsPkgs.snap-extras
              hsPkgs.snap-server
              hsPkgs.text
              hsPkgs.time
              hsPkgs.transformers
              hsPkgs.map-syntax
            ];
          };
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.snap-core
              hsPkgs.snap-extras
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-quickcheck
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }