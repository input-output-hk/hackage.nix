{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "heavy-logger-amazon";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 ILya Portnov";
        maintainer = "portnov84@rambler.ru";
        author = "IlyaPortnov";
        homepage = "https://github.com/portnov/heavy-logger-amazon#readme";
        url = "";
        synopsis = "heavy-logger compatibility with amazonka-core logging";
        description = "This package is a simple adapter for use of @amazonka@ package with @heavy-logger@.\n\n@Amazonka@ has it's own interface for logging. This package provides implementation of that interface by @heavy-logger@.";
        buildType = "Simple";
      };
      components = {
        heavy-logger-amazon = {
          depends  = [
            hsPkgs.base
            hsPkgs.template-haskell
            hsPkgs.binary
            hsPkgs.text
            hsPkgs.heavy-logger
            hsPkgs.amazonka-core
          ];
        };
      };
    }