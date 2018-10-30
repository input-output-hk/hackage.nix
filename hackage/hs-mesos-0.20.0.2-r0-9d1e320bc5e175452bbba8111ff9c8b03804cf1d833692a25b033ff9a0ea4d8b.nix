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
      specVersion = "1.10";
      identifier = {
        name = "hs-mesos";
        version = "0.20.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ian@iankduncan.com";
      author = "Ian Duncan";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Bindings to the Apache Mesos platform.\n\n<http://mesos.apache.org/ Apache Mesos> is a cluster manager that simplifies the complexity of running applications on a shared pool of servers.\n\nNote that this package currently requires 'libmesos' to be installed on your development system in order to build.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.lens)
          (hsPkgs.managed)
        ];
        libs = [
          (pkgs."mesos")
          (pkgs."stdc++")
        ];
      };
      exes = {
        "test-executor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-mesos)
            (hsPkgs.bytestring)
          ];
          libs = [
            (pkgs."mesos")
            (pkgs."stdc++")
          ];
        };
        "test-framework" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-mesos)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
          ];
          libs = [
            (pkgs."mesos")
            (pkgs."stdc++")
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hs-mesos)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.lens)
            (hsPkgs.managed)
          ];
        };
      };
    };
  }