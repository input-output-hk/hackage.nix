{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "simtreelo";
          version = "0.1.1.0";
        };
        license = "GPL-3.0-only";
        copyright = "(c) 2014, 2015 Marcelo Garlet Millani";
        maintainer = "marcelogmillani@gmail.com";
        author = "Marcelo Garlet Millani";
        homepage = "";
        url = "";
        synopsis = "Loader for data organized in a tree";
        description = "This library loads a string or file into a Tree. The hierarchy is given solely by the indentation, meaning that the input is human-readable.";
        buildType = "Simple";
      };
      components = {
        "simtreelo" = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }