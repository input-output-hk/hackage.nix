{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snap-extras";
          version = "0.2.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "ozataman@gmail.com";
        author = "Ozgun Ataman";
        homepage = "";
        url = "";
        synopsis = "A collection of useful helpers and utilities for Snap web applications.";
        description = "This package contains a collection of helper functions\nthat come in handy in most practical, real-world\napplications. Check individual modules to understand\nwhat's here. You can simply import Snap.Extras and use\nthe initializer in there to get them all at once.";
        buildType = "Simple";
      };
      components = {
        "snap-extras" = {
          depends  = [
            hsPkgs.aeson
            hsPkgs.base
            hsPkgs.blaze-html
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-lens
            hsPkgs.digestive-functors
            hsPkgs.digestive-functors-snap
            hsPkgs.directory-tree
            hsPkgs.filepath
            hsPkgs.heist
            hsPkgs.safe
            hsPkgs.snap
            hsPkgs.snap-core
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.xmlhtml
            hsPkgs.configurator
          ];
        };
      };
    }