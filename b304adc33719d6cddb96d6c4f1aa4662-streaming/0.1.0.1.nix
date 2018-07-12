{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "streaming";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "what_is_it_to_do_anything@yahoo.com";
        author = "michaelt";
        homepage = "https://github.com/michaelt/streaming";
        url = "";
        synopsis = "A general free monad transformer optimized for streaming applications.";
        description = "Stream is an optimized variant of FreeT.\nIt can be used wherever FreeT is used, but is focused\non employment with functors like '((,) a)' which generate\neffectful sequences or \\\"producers\\\"";
        buildType = "Simple";
      };
      components = {
        "streaming" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.mmorph
            hsPkgs.transformers
            hsPkgs.ghc-prim
          ];
        };
      };
    }