{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "strict-types";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "Jose Iborra Lopez, 2017";
        maintainer = "";
        author = "Pepe Iborra";
        homepage = "https://github.com/pepeiborra/strict-types";
        url = "";
        synopsis = "A type level predicate ranging over strict types";
        description = "A type class for types T where forall x :: T . rnf x = \\u22A5 <=> rwhnf x = \\u22A5";
        buildType = "Simple";
      };
      components = {
        strict-types = {
          depends  = [
            hsPkgs.base
            hsPkgs.array
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.foundation
            hsPkgs.text
            hsPkgs.unordered-containers
            hsPkgs.vector
          ];
        };
        exes = {
          examples = {
            depends  = [
              hsPkgs.containers
              hsPkgs.strict-types
              hsPkgs.unordered-containers
              hsPkgs.vector
            ];
          };
        };
      };
    }