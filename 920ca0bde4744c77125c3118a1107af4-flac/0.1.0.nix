{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      dev = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flac";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Mark Karpov <markkarpov@openmailbox.org>";
        author = "Mark Karpov <markkarpov@openmailbox.org>";
        homepage = "https://github.com/mrkkrp/flac";
        url = "";
        synopsis = "Complete high-level binding to libFLAC";
        description = "Complete high-level binding to libFLAC.";
        buildType = "Simple";
      };
      components = {
        flac = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.directory
            hsPkgs.exceptions
            hsPkgs.filepath
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.transformers
            hsPkgs.vector
            hsPkgs.wave
          ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          libs = [ pkgs.FLAC pkgs.FLAC ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.data-default-class
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.flac
              hsPkgs.hspec
              hsPkgs.temporary
              hsPkgs.transformers
              hsPkgs.vector
              hsPkgs.wave
            ] ++ pkgs.lib.optional (!compiler.isGhc) hsPkgs.semigroups;
          };
        };
      };
    }