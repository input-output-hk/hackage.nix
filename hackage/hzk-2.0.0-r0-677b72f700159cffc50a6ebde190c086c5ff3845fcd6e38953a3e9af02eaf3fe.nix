{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "hzk";
        version = "2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "DiegoSouza <dsouza@c0d3.xxx>";
      author = "DiegoSouza <dsouza@c0d3.xxx>";
      homepage = "http://github.com/dgvncsz0f/hzk";
      url = "";
      synopsis = "Haskell client library for Apache Zookeeper";
      description = "A haskell binding to Apache Zookeeper C library";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
        libs = [
          (pkgs."zookeeper_mt")
        ];
      };
      tests = {
        "test-zookeeper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.bytestring)
            (hsPkgs.tasty-hunit)
          ];
          libs = [
            (pkgs."zookeeper_mt")
          ];
        };
      };
    };
  }