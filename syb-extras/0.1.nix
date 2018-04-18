{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "syb-extras";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2011 Edward A. Kmett";
        maintainer = "Edward A. Kmett <ekmett@gmail.com>";
        author = "Edward A. Kmett";
        homepage = "http://comonad.com/reader/";
        url = "";
        synopsis = "higher order versions of the Scrap Your Boilerplate classes";
        description = "higher order versions of Scrap Your Boilerplate classes to ease programming with polymorphic recursion and reduce UndecidableInstances";
        buildType = "Simple";
      };
      components = {
        syb-extras = {
          depends  = [
            hsPkgs.base
            hsPkgs.prelude-extras
          ];
        };
      };
    }