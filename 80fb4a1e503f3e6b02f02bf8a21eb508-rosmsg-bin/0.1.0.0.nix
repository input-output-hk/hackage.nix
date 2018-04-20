{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rosmsg-bin";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Alexander Krupenkin";
        maintainer = "mail@akru.me";
        author = "Alexander Krupenkin";
        homepage = "https://github.com/RoboticsHS/rosmsg-bin#readme";
        url = "";
        synopsis = "ROS message management tools";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        exes = {
          rosmsg = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.rospkg
              hsPkgs.filepath
            ];
          };
          genhs = {
            depends  = [
              hsPkgs.base
              hsPkgs.text
              hsPkgs.stack
              hsPkgs.rospkg
              hsPkgs.rosmsg
              hsPkgs.filepath
              hsPkgs.temporary
              hsPkgs.monad-logger
            ];
          };
        };
      };
    }