{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "aeson-diff-generic";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Kristof Bastiaensen (2018)";
        maintainer = "Kristof Bastiaensen";
        author = "Kristof Bastiaensen";
        homepage = "";
        url = "";
        synopsis = "Apply a json-patch to any haskell datatype.";
        description = "Apply a json-patch directly to a haskell datatype.  It extends the capabilities of the aeson-diff packages, and includes template haskell functions for automatically deriving the right instances.";
        buildType = "Simple";
      };
      components = {
        aeson-diff-generic = {
          depends  = ([
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.aeson
            hsPkgs.aeson-diff
            hsPkgs.bytestring
            hsPkgs.hashable
            hsPkgs.bytestring
            hsPkgs.uuid-types
            hsPkgs.dlist
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.containers
            hsPkgs.dlist
            hsPkgs.scientific
            hsPkgs.tagged
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.th-abstraction
            hsPkgs.time
            hsPkgs.unordered-containers
            hsPkgs.uuid-types
            hsPkgs.vector
          ] ++ pkgs.lib.optionals (!compiler.isGhc) [
            hsPkgs.semigroups
            hsPkgs.transformers
            hsPkgs.transformers-compat
            hsPkgs.fail
          ]) ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.nats;
        };
      };
    }