{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aeson-diff-generic";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Kristof Bastiaensen (2018)";
        maintainer = "Kristof Bastiaensen";
        author = "Kristof Bastiaensen";
        homepage = "";
        url = "";
        synopsis = "Apply a json-patch to any haskell datatype.";
        description = "Apply a json-patch to any haskell datatype.  It extends the capabilities of the aeson-diff packages, and includes template haskell functions for automatically deriving the right instances.";
        buildType = "Simple";
      };
      components = {
        aeson-diff-generic = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.aeson-diff
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.mtl
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.containers
            hsPkgs.vector
            hsPkgs.bytestring
            hsPkgs.time
            hsPkgs.uuid-types
            hsPkgs.dlist
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.th-abstraction
          ];
        };
      };
    }