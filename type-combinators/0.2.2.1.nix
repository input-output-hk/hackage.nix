{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "type-combinators";
          version = "0.2.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2015 Kyle Carter, all rights reserved";
        maintainer = "kylcarte@gmail.com";
        author = "Kyle Carter";
        homepage = "https://github.com/kylcarte/type-combinators";
        url = "";
        synopsis = "A collection of data types for type-level programming";
        description = "";
        buildType = "Simple";
      };
      components = {
        type-combinators = {
          depends  = [ hsPkgs.base ];
        };
      };
    }