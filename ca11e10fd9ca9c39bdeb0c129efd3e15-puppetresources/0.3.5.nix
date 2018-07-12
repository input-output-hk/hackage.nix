{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "puppetresources";
          version = "0.3.5";
        };
        license = "GPL-3.0-only";
        copyright = "";
        maintainer = "bartavelle@gmail.com";
        author = "Simon Marechal";
        homepage = "http://lpuppet.banquise.net";
        url = "";
        synopsis = "A program that displays the puppet resources associated to a node given .pp files.";
        description = "";
        buildType = "Simple";
      };
      components = {
        exes = {
          "puppetresources" = {
            depends  = [
              hsPkgs.base
              hsPkgs.language-puppet
              hsPkgs.hsfacter
              hsPkgs.containers
              hsPkgs.hslogger
              hsPkgs.Diff
              hsPkgs.mtl
            ];
          };
        };
      };
    }