{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "elevator";
          version = "0.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2014 Fumiaki Kinoshita";
        maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
        author = "Fumiaki Kinoshita";
        homepage = "https://github.com/fumieval/elevator";
        url = "";
        synopsis = "Immediately lifts to a desired level";
        description = "This package provides 'elevate' function which composes 'lift'-like transformations automatically.";
        buildType = "Simple";
      };
      components = {
        "elevator" = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
            hsPkgs.clean-unions
          ];
        };
      };
    }