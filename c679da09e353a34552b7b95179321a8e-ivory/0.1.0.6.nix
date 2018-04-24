{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ivory";
          version = "0.1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "trevor@galois.com, leepike@galois.com";
        author = "Galois, Inc.";
        homepage = "http://ivorylang.org";
        url = "";
        synopsis = "Safe embedded C programming.";
        description = "Using GHC type-system extensions, enforces safe low-level programming, while maintaining expressiveness.";
        buildType = "Simple";
      };
      components = {
        ivory = {
          depends  = [
            hsPkgs.base
            hsPkgs.base-compat
            hsPkgs.pretty
            hsPkgs.containers
            hsPkgs.monadLib
            hsPkgs.template-haskell
            hsPkgs.filepath
            hsPkgs.text
            hsPkgs.dlist
            hsPkgs.th-lift
            hsPkgs.array
          ];
          build-tools = [
            hsPkgs.alex
            hsPkgs.happy
          ];
        };
      };
    }