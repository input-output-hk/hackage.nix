{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "post-mess-age";
          version = "0.2.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dhelta.diaz@gmail.com";
        author = "Daniel Díaz";
        homepage = "";
        url = "";
        synopsis = "Send messages to a handle concurrently without getting them mixed.";
        description = "Do you have a program that output messages to the screen from different\nthreads and you are tired of getting them all messed up? Welcome to the\n/post-mess-age/. Using a simple /passer object/ you can make your logging\nmessages useful again. The methodology is explained in the API docs.\nYou can use post-mess-age not only for the 'stdout' handle, but with anything!";
        buildType = "Simple";
      };
      components = {
        post-mess-age = {
          depends  = [ hsPkgs.base ];
        };
      };
    }