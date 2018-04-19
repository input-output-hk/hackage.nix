{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.22";
        identifier = {
          name = "java-adt";
          version = "0.2016.11.28";
        };
        license = "LicenseRef-OtherLicense";
        copyright = "";
        maintainer = "Andreas Abel <andreas.abel@ifi.lmu.de>";
        author = "Andreas Abel";
        homepage = "http://github.com/andreasabel/java-adt";
        url = "";
        synopsis = "Create immutable algebraic data structures for Java.";
        description = "A simple tool to create immutable algebraic data structures and visitors for Java\n(such as abstract syntax trees).  The input syntax is similar to Haskell data types,\nand they will be compiled to Java class hierarchies.";
        buildType = "Simple";
      };
      components = {
        exes = {
          java-adt = {
            depends  = [
              hsPkgs.base
              hsPkgs.array
              hsPkgs.pretty
            ];
          };
        };
      };
    }