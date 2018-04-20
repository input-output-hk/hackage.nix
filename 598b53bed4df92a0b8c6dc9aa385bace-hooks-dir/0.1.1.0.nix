{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hooks-dir";
          version = "0.1.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013, 2014 Tobias Florek";
        maintainer = "me@ibotty.net";
        author = "Tobias Florek";
        homepage = "https://github.com/ibotty/hooks-dir";
        url = "";
        synopsis = "run executables in a directory as hooks";
        description = "run all executables in a directory with the same\narguments and environment and collect the results.";
        buildType = "Simple";
      };
      components = {
        hooks-dir = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.process
            hsPkgs.text
          ];
        };
      };
    }