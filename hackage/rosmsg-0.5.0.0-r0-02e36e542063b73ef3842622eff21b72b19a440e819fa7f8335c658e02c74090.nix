{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rosmsg"; version = "0.5.0.0"; };
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.binary)
          (hsPkgs.pureMD5)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
          (hsPkgs.lens-family)
          (hsPkgs.data-default)
          (hsPkgs.template-haskell)
          ];
        };
      };
    }