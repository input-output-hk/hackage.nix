{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "justified-containers";
          version = "0.1.1.1";
        };
        license = "BSD-2-Clause";
        copyright = "2017 Matt Noonan";
        maintainer = "matt.noonan@gmail.com";
        author = "Matt Noonan";
        homepage = "https://github.com/matt-noonan/justified-containers";
        url = "";
        synopsis = "Keyed container types with type-checked proofs of key presence.";
        description = "This package contains wrappers around standard container types,\nthat provide guarantees about the presence of keys within the\ncontainer.";
        buildType = "Simple";
      };
      components = {
        "justified-containers" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }