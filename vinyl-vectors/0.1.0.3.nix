{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      examples = false;
    } // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "vinyl-vectors";
          version = "0.1.0.3";
        };
        license = "BSD-3-Clause";
        copyright = "2015 Andrew Martin";
        maintainer = "andrew.thaddeus@gmail.com";
        author = "Andrew Martin";
        homepage = "http://github.com/andrewthad/vinyl-vectors";
        url = "";
        synopsis = "Vectors for vinyl vectors";
        description = "This library provides vectors of vinyl records stored\nas a structure of arrays. This vectors types provided\nimplement the generic vector interface and can be\nused with any library that accepts a generic vector\ntype.";
        buildType = "Simple";
      };
      components = {
        vinyl-vectors = {
          depends  = [
            hsPkgs.base
            hsPkgs.vinyl
            hsPkgs.vector
            hsPkgs.primitive
            hsPkgs.constraints
            hsPkgs.text
          ];
        };
        exes = {
          sorting = {
            depends  = optionals _flags.examples [
              hsPkgs.vinyl-vectors
              hsPkgs.base
              hsPkgs.vector-algorithms
              hsPkgs.text
              hsPkgs.vinyl
              hsPkgs.microlens
            ];
          };
        };
      };
    }