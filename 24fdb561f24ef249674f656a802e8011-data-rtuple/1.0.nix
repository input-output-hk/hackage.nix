{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-rtuple";
          version = "1.0";
        };
        license = "Apache-2.0";
        copyright = "Copyright (C) 2014 Wojciech Danilo";
        maintainer = "Wojciech Danilo <wojciech.danilo@gmail.com>";
        author = "Wojciech Danilo";
        homepage = "https://github.com/wdanilo/rtuple";
        url = "";
        synopsis = "Recursive tuple data structure. It is very usefull when implementing some lo-level operations, allowing to traverse different elements using Haskell's type classes.";
        description = "";
        buildType = "Simple";
      };
      components = {
        data-rtuple = {
          depends  = [
            hsPkgs.base
            hsPkgs.typelevel
            hsPkgs.lens
          ];
        };
      };
    }