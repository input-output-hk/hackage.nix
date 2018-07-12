{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.24";
        identifier = {
          name = "ChannelT";
          version = "0.0.0.4";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2015-2017, Alexander Altman";
        maintainer = "alexanderaltman@me.com";
        author = "Alexander Altman";
        homepage = "https://github.com/pthariensflame/ChannelT";
        url = "";
        synopsis = "Generalized stream processors";
        description = "A mutual generalization of <https://hackage.haskell.org/package/pipes pipes> and <https://hackage.haskell.org/package/machines machines>; a library for exploring a particular corner of the design space of streaming IO (and other related tasks) in Haskell.";
        buildType = "Simple";
      };
      components = {
        "ChannelT" = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.free
            hsPkgs.transformers-base
            hsPkgs.mmorph
          ];
        };
      };
    }