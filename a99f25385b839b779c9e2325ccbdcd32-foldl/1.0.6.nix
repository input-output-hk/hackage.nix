{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8.0.2";
        identifier = {
          name = "foldl";
          version = "1.0.6";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Gabriel Gonzalez";
        maintainer = "Gabriel439@gmail.com";
        author = "Gabriel Gonzalez";
        homepage = "";
        url = "";
        synopsis = "Composable, streaming, and efficient left folds";
        description = "This library provides strict left folds that stream in constant\nmemory, and you can combine folds using @Applicative@ style to derive new\nfolds.  Derived folds still traverse the container just once and are often as\nefficient as hand-written folds.";
        buildType = "Simple";
      };
      components = {
        foldl = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.primitive
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.containers
          ];
        };
      };
    }