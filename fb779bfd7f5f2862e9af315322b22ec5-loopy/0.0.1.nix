{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "loopy";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "Emily Mitchell 2009-2011";
        maintainer = "Emily Mitchell <emily.g.h.mitchell@gmail.com>";
        author = "Emily Mitchell <emily.g.h.mitchell@gmail.com>";
        homepage = "http://www.esc.cam.ac.uk/people/research-students/emily-king";
        url = "";
        synopsis = "Find all biological feedback loops within an ecosystem graph.";
        description = "Find all biological feedback loops within an ecosystem graph.\nThis software is very much in development, and can probably only be used\nin conjunction with emailing the author! Documentation and cleanups to follow.";
        buildType = "Simple";
      };
      components = {
        exes = {
          loopy = {
            depends  = [
              hsPkgs.base
              hsPkgs.hmatrix
              hsPkgs.GoogleChart
              hsPkgs.cmdargs
              hsPkgs.containers
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
              hsPkgs.random
            ];
          };
        };
      };
    }