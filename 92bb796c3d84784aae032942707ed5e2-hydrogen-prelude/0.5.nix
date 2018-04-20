{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.18";
        identifier = {
          name = "hydrogen-prelude";
          version = "0.5";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "julfleischer@paypal.com";
        author = "Julian Fleischer";
        homepage = "https://github.com/scravy/hydrogen-prelude";
        url = "";
        synopsis = "Hydrogen Prelude";
        description = "";
        buildType = "Simple";
      };
      components = {
        hydrogen-prelude = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.hashable
            hsPkgs.hydrogen-version
            hsPkgs.process
            hsPkgs.random
            hsPkgs.regex-base
            hsPkgs.regex-tdfa
            hsPkgs.time
            hsPkgs.transformers
            hsPkgs.uuid
          ];
        };
      };
    }