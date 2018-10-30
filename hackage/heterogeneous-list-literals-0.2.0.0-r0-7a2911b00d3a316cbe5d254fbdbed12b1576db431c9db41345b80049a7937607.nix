{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "heterogeneous-list-literals";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dmillardurrant@gmail.com";
      author = "David Millar-Durrant";
      homepage = "https://github.com/davidm-d/heterogeneous-list-literals";
      url = "";
      synopsis = "Allows the use of tuples as literals for Heterogeneous collections";
      description = "This is an incredibly simple library, which makes writing literals for heterogeneous collections easy\n\nIf you write a function with the signature\n\n> hList :: HLL input output => input -> HList output\nthen\n\n> a :: HList '[]\n> a = hList ()\n>\n> b :: HList '[Bool]\n> b = hList (Only True)\n>\n> c :: HList '[Bool, Int, Double, String]\n> c = hList (True, 24, 10.5, \"Fire\")\n\nThe full code is in test\\/Docs.hs\n\nThis only supports literals of length up to 20, though that can be easily extended using the code generator in src\\/Data\\/HeterogeneousListLiterals";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Only)
        ];
      };
      tests = {
        "HeterogenousListLiterals-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.heterogeneous-list-literals)
          ];
        };
      };
    };
  }