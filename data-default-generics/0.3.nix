{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "data-default-generics";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "<jmacristovao@gmail.com>";
        author = "Lukas Mai 2011-2013, Jonathan Fischoff 2013, João Cristóvão 2014";
        homepage = "";
        url = "";
        synopsis = "A class for types with a default value";
        description = "A class for types with a default value.\nFeatures generics support to add defaults to records.";
        buildType = "Simple";
      };
      components = {
        data-default-generics = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.dlist
            hsPkgs.old-locale
            hsPkgs.time
            hsPkgs.ghc-prim
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.dlist
              hsPkgs.old-locale
              hsPkgs.time
              hsPkgs.ghc-prim
              hsPkgs.text
              hsPkgs.bytestring
              hsPkgs.containers
              hsPkgs.unordered-containers
              hsPkgs.vector
              hsPkgs.hspec
              hsPkgs.HUnit
            ];
          };
        };
      };
    }