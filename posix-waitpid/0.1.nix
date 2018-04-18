{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "posix-waitpid";
          version = "0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "zygoloid@metafoo.co.uk";
        author = "Richard Smith";
        homepage = "";
        url = "";
        synopsis = "Low-level wrapping of POSIX waitpid(2).";
        description = "A low-level wrapping of POSIX waitpid(2).";
        buildType = "Simple";
      };
      components = {
        posix-waitpid = {
          depends  = [
            hsPkgs.base
            hsPkgs.unix
          ];
        };
      };
    }