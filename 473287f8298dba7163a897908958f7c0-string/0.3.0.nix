{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "string";
          version = "0.3.0";
        };
        license = "BSD-3-Clause";
        copyright = "2013 Chris Done";
        maintainer = "chrisdone@gmail.com";
        author = "Chris Done";
        homepage = "";
        url = "";
        synopsis = "Common things for strings";
        description = "Common things for strings";
        buildType = "Simple";
      };
      components = {
        string = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
          ];
        };
      };
    }