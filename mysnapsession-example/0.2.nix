{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mysnapsession-example";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Chris Smith <cdsmith@gmail.com>";
        author = "Chris Smith <cdsmith@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Example projects using mysnapsession";
        description = "This is a collection of simple web applications that use\nthe mysnapsession package for stateful HTTP.";
        buildType = "Simple";
      };
      components = {
        exes = {
          animalgame = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.heist
              hsPkgs.mtl
              hsPkgs.snap
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.mysnapsession
              hsPkgs.clientsession
            ];
          };
          clientcount = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.heist
              hsPkgs.mtl
              hsPkgs.snap
              hsPkgs.snap-core
              hsPkgs.snap-server
              hsPkgs.time
              hsPkgs.mysnapsession
            ];
          };
        };
      };
    }