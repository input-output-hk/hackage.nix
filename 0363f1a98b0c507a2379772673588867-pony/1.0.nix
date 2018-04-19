{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "pony";
          version = "1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dons@galois.com";
        author = "Don Stewart";
        homepage = "http://www.ascii-art.de/ascii/uvw/unicorn.txt";
        url = "";
        synopsis = "Can I have a pony?";
        description = "You can have a pony!";
        buildType = "Simple";
      };
      components = {
        exes = {
          can-i-have-a-pony = {
            depends  = [ hsPkgs.base ];
          };
        };
      };
    }