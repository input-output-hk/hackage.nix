{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "haskell-gi-overloading";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Iñaki García Etxebarria";
        maintainer = "garetxe@gmail.com";
        author = "Iñaki García Etxebarria";
        homepage = "https://github.com/haskell-gi/haskell-gi";
        url = "";
        synopsis = "Overloading support for haskell-gi";
        description = "Control overloading support in haskell-gi generated bindings";
        buildType = "Simple";
      };
      components = {
        haskell-gi-overloading = {};
      };
    }