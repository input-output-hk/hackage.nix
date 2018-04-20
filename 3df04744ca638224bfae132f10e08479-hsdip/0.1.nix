{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "hsdip";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Evan Martin <martine@danga.com>";
        author = "Evan Martin";
        homepage = "http://neugierig.org/software/darcs/hsdip/";
        url = "";
        synopsis = "hsdip - a Diplomacy parser/renderer";
        description = "";
        buildType = "Simple";
      };
      components = {
        hsdip = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.parsec
            hsPkgs.HUnit
            hsPkgs.cairo
          ];
        };
        exes = { hsdip = {}; };
      };
    }