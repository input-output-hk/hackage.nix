{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "pringletons";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "https://github.com/andrewthad/pringletons";
        url = "";
        synopsis = "Classes and data structures complementing the singletons library";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        pringletons = {
          depends  = [
            hsPkgs.base
            hsPkgs.hashable
            hsPkgs.singletons
            hsPkgs.aeson
            hsPkgs.text
            hsPkgs.vector
            hsPkgs.vinyl
            hsPkgs.unordered-containers
            hsPkgs.template-haskell
          ];
        };
      };
    }