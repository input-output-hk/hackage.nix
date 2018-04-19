{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      tests = false;
      hpc = true;
    } // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "rpm";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "stoltene2@gmail.com";
        author = "Eric Stolten";
        homepage = "";
        url = "";
        synopsis = "Cozy little project to question unruly rpm packages.";
        description = "RPM is a decent system for listing dependencies among packages.  In its simplest form it works quite well.  Dependency management can become troublesome if you have a system that provides numerous packages.  Worse yet, if you provide many packages for many different versions of a software application.  This library aims to provide a rich set of combinators to assert the validity of a collection of RPMs.";
        buildType = "Simple";
      };
      components = {
        rpm = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.HaXml
          ];
        };
        exes = {
          test-rpm = {
            depends  = optionals (!(!_flags.tests)) [
              hsPkgs.base
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck
              hsPkgs.test-framework-hunit
              hsPkgs.QuickCheck
              hsPkgs.HUnit
              hsPkgs.HaXml
              hsPkgs.filepath
              hsPkgs.process
              hsPkgs.directory
            ];
          };
        };
      };
    }