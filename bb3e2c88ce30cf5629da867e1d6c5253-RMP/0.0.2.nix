{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "RMP";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Noam Lewis <jones.noamle@gmail.com>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Binding to code that controls a Segway RMP";
        description = "This library provides an interface to a USB-connected Segway RMP.\n\nIt is based on code and information from <http://www.ai.sri.com/~vincent/segway.php>,\nand was tested on a Segway RMP 200.\n\nWARNING: The Segway RMP is a dangerous (and massive) device, use this library with care.\nThe library comes without warranty, and you may find the Segway running loose, harming people.";
        buildType = "Simple";
      };
      components = {
        RMP = {
          depends  = [
            hsPkgs.base
            hsPkgs.allocated-processor
          ];
          libs = [
            pkgs.canlib
            pkgs.ftd2xx
            pkgs."stdc++"
          ];
        };
        exes = {
          rmp-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.allocated-processor
            ];
            libs = [
              pkgs.canlib
              pkgs.ftd2xx
              pkgs."stdc++"
            ];
          };
          rmp-test-facedetect = {
            depends  = [
              hsPkgs.base
              hsPkgs.allocated-processor
              hsPkgs.cv-combinators
              hsPkgs.HOpenCV
              hsPkgs.vector-space
            ];
            libs = [
              pkgs.canlib
              pkgs.ftd2xx
              pkgs."stdc++"
            ];
          };
        };
      };
    }