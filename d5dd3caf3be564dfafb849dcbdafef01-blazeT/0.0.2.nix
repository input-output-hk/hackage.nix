{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "blazeT";
          version = "0.0.2";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Johannes Gerer <oss@johannesgerer.com>";
        author = "Johannes Gerer";
        homepage = "http://johannesgerer.com/blazeT";
        url = "";
        synopsis = "A true monad (transformer) version of the blaze-markup and blaze-html libraries";
        description = "A true monad (transformer) version of the blaze-markup and blaze-html libraries, implemented as as a very thin wrapper around and strict superset of these libraries.\n\nSee <https://github.com/johannesgerer/blazeT Readme> on Github.";
        buildType = "Custom";
      };
      components = {
        "blazeT" = {
          depends  = [
            hsPkgs.base
            hsPkgs.blaze-markup
            hsPkgs.blaze-html
            hsPkgs.blaze-builder
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.transformers
          ];
        };
      };
    }