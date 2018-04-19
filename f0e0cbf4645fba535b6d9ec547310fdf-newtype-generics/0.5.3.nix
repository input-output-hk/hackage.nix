{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "newtype-generics";
          version = "0.5.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Simon Jakobi <simon.jakobi@gmail.com>";
        author = "Darius Jahandarie, Conor McBride, João Cristóvão, Simon Jakobi";
        homepage = "http://github.com/sjakobi/bsb-http-chunked";
        url = "";
        synopsis = "A typeclass and set of functions for working with newtypes";
        description = "Per Conor McBride, the Newtype typeclass represents the packing and unpacking of a newtype,\nand allows you to operate under that newtype with functions such as ala.\nGenerics support was added in version 0.4, making this package a full replacement\nfor the original newtype package, and a better alternative to newtype-th.";
        buildType = "Simple";
      };
      components = {
        newtype-generics = {
          depends  = [
            hsPkgs.base
            hsPkgs.transformers
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.base
              hsPkgs.newtype-generics
              hsPkgs.hspec
            ];
          };
        };
        benchmarks = {
          bench = {
            depends  = [
              hsPkgs.base
              hsPkgs.criterion
              hsPkgs.newtype-generics
              hsPkgs.semigroups
            ];
          };
        };
      };
    }