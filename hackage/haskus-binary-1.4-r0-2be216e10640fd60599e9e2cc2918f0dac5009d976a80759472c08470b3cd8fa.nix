{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "haskus-binary"; version = "1.4"; };
      license = "BSD-3-Clause";
      copyright = "Sylvain Henry 2017";
      maintainer = "sylvain@haskus.fr";
      author = "Sylvain Henry";
      homepage = "http://www.haskus.org/system";
      url = "";
      synopsis = "Haskus binary format manipulation";
      description = "A set of types and tools to manipulate binary data, memory, etc. In\nparticular to interface Haskell data types with foreign data types (C\nstructs, unions, enums, etc.).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.haskus-utils-types)
          (hsPkgs.haskus-utils-data)
          (hsPkgs.haskus-utils)
          (hsPkgs.cereal)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.primitive)
          (hsPkgs.megaparsec)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskus-binary)
            (hsPkgs.haskus-utils)
            (hsPkgs.haskus-utils-data)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.bytestring)
            (hsPkgs.doctest)
            ];
          };
        };
      benchmarks = {
        "bench-BitReverse" = {
          depends = [ (hsPkgs.base) (hsPkgs.haskus-binary) (hsPkgs.criterion) ];
          };
        };
      };
    }