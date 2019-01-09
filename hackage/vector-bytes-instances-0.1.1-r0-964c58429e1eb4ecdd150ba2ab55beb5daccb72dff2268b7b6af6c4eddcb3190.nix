{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "vector-bytes-instances"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2017-2018";
      maintainer = "ren¡ren!zone";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/vector-bytes-instances";
      url = "";
      synopsis = "Serial (from the bytes package) for Vector (from the vector package)";
      description = "Serial (from the bytes package) for Vector (from the vector package)\n\nBased on the original BSD3-licensed work by Don Stewart in the\nvector-binary-instances library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.vector) (hsPkgs.bytes) ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.vector-bytes-instances)
            (hsPkgs.vector)
            (hsPkgs.bytes)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            ];
          };
        };
      };
    }