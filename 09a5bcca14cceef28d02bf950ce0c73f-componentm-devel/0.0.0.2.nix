{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "componentm-devel";
          version = "0.0.0.2";
        };
        license = "MIT";
        copyright = "© 2017-current Roman Gonzalez";
        maintainer = "open-source@roman-gonzalez.info";
        author = "Roman Gonzalez";
        homepage = "https://github.com/roman/Haskell-componentm#readme";
        url = "";
        synopsis = "Easy REPL driven development using ComponentM";
        description = "This library enhances the componentm with auto-reloading\ncapabilites for your application, allowing to ensure cleanup\nof resources when doing REPL driven development, or when using\nghcid";
        buildType = "Simple";
      };
      components = {
        componentm-devel = {
          depends  = [
            hsPkgs.base
            hsPkgs.componentm
            hsPkgs.foreign-store
            hsPkgs.rio
            hsPkgs.teardown
          ];
        };
      };
    }