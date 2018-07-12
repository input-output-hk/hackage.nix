{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "proto-lens-descriptors";
          version = "0.2.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Google Inc.";
        maintainer = "proto-lens@googlegroups.com";
        author = "Judah Jacobson";
        homepage = "";
        url = "";
        synopsis = "Protocol buffers for describing the definitions of messages.";
        description = "This package provides definitions for the 'proto-lens' package\nof message types which describe @.proto@ files.";
        buildType = "Simple";
      };
      components = {
        "proto-lens-descriptors" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.bytestring
            hsPkgs.data-default-class
            hsPkgs.lens-family
            hsPkgs.lens-labels
            hsPkgs.proto-lens
            hsPkgs.text
          ];
        };
      };
    }