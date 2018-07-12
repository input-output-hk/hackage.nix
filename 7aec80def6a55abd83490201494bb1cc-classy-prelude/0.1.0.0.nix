{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "classy-prelude";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "michael@snoyman.com";
        author = "Michael Snoyman";
        homepage = "https://github.com/snoyberg/classy-prelude";
        url = "";
        synopsis = "A typeclass-based Prelude.";
        description = "Focuses on using common typeclasses when possible, and creating new ones to avoid name clashing. Exposes many recommended datastructures (Map, ByteString, etc) directly without requiring long import lists and qualified modules.";
        buildType = "Simple";
      };
      components = {
        "classy-prelude" = {
          depends  = [
            hsPkgs.base
            hsPkgs.system-filepath
            hsPkgs.transformers
            hsPkgs.containers
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.vector
            hsPkgs.unordered-containers
            hsPkgs.hashable
          ];
        };
      };
    }