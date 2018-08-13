{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rospkg";
        version = "0.2.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Alexander Krupenkin";
      maintainer = "mail@akru.me";
      author = "Alexander Krupenkin";
      homepage = "https://github.com/RobiticsHS/rospkg#readme";
      url = "";
      synopsis = "ROS package system information";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "rospkg" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.split)
          (hsPkgs.async)
          (hsPkgs.tagsoup)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.fast-tagsoup)
        ];
      };
      exes = {
        "rospkg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.rospkg)
          ];
        };
      };
      tests = {
        "rospkg-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.rospkg)
          ];
        };
      };
    };
  }