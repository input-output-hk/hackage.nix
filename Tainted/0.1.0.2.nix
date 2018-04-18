{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "Tainted";
          version = "0.1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015 Ross Meikleham";
        maintainer = "rossmeikleham@hotmail.co.uk";
        author = "RossMeikleham";
        homepage = "https://github.com/RossMeikleham/Tainted";
        url = "";
        synopsis = "Tainted type, and associated operations";
        description = "A Tainted type contains either a clean or dirty value. Values which are\nclean stay clean as long as an operation performed on them results\nin a clean value. If combined with a dirty value, the value becomes\ntainted as dirty and remains that way through further operations.\nThis package contains implementations of the Tainted Monad as well as\nTaintedT (the Tainted Monad Transformer), as well as examples of using\neach of them.";
        buildType = "Simple";
      };
      components = {
        Tainted = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }