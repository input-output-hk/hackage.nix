{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "rosmsg";
          version = "0.5.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2016 Alexander Krupenkin";
        maintainer = "mail@akru.me";
        author = "Alexander Krupenkin";
        homepage = "https://github.com/RoboticsHS/rosmsg#readme";
        url = "";
        synopsis = "ROS message parser, render, TH";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "rosmsg" = {
          depends  = [
            hsPkgs.base
            hsPkgs.text
            hsPkgs.binary
            hsPkgs.pureMD5
            hsPkgs.attoparsec
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.lens-family-core
            hsPkgs.data-default-class
          ];
        };
      };
    }