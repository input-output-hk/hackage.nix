{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "colors";
          version = "0.3.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2013 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/colors";
        url = "";
        synopsis = "A type for colors";
        description = "";
        buildType = "Simple";
      };
      components = {
        colors = {
          depends  = [
            hsPkgs.base
            hsPkgs.profunctors
            hsPkgs.linear
            hsPkgs.lens
          ];
        };
      };
    }