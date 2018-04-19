{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "snap-extras";
          version = "0.1.7";
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
        snap-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.filepath
            hsPkgs.aeson
            hsPkgs.snap-core
            hsPkgs.snap
            hsPkgs.heist
            hsPkgs.xmlhtml
            hsPkgs.bytestring
            hsPkgs.text
            hsPkgs.safe
            hsPkgs.data-lens
            hsPkgs.transformers
            hsPkgs.blaze-html
            hsPkgs.digestive-functors
            hsPkgs.digestive-functors-blaze
            hsPkgs.digestive-functors-snap
          ];
        };
      };
    }