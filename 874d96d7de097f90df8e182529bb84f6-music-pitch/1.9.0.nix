{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "music-pitch";
          version = "1.9.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Hans Hoglund";
        author = "Hans Hoglund";
        homepage = "";
        url = "";
        synopsis = "Musical pitch representation.";
        description = "This package provides various representations of musical pitch.\n\nThis library is part of the Music Suite, see\n<http://music-suite.github.io>.";
        buildType = "Simple";
      };
      components = {
        "music-pitch" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.lens
            hsPkgs.semigroups
            hsPkgs.music-pitch-literal
            hsPkgs.data-interval
            hsPkgs.vector-space
            hsPkgs.vector-space-points
            hsPkgs.nats
            hsPkgs.positive
            hsPkgs.type-unary
            hsPkgs.aeson
          ];
        };
      };
    }