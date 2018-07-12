{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "scotty-resource";
          version = "0.2.0.0";
        };
        license = "Apache-2.0";
        copyright = "2016 - Rick Owens";
        maintainer = "rick@owenssoftware.com";
        author = "Rick Owens";
        homepage = "https://github.com/taphu/scotty-resource";
        url = "";
        synopsis = "A Better way of modeling web resources.";
        description = "Allows users of the Scotty web framework to model\nresources more like the HTTP standard models them.";
        buildType = "Simple";
      };
      components = {
        "scotty-resource" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.http-types
            hsPkgs.scotty
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.wai
          ];
        };
      };
    }