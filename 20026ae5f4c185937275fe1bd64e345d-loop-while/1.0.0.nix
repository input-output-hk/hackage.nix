{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "loop-while";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2008--2010, Neil Brown";
        maintainer = "neil@twistedsquare.com";
        author = "Neil Brown";
        homepage = "";
        url = "";
        synopsis = "A monad transformer supporting various styles of while loop";
        description = "A monad transformer allowing for pre-condition, post-condition and mid-condition while loops.";
        buildType = "Simple";
      };
      components = {
        loop-while = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }