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
        name = "indexed-list-literals";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dmillardurrant@gmail.com";
      author = "David Millar-Durrant";
      homepage = "https://github.com/davidm-d/indexed-list-literals";
      url = "";
      synopsis = "Type safe indexed list literals";
      description = "This is an incredibly simple library, which makes writing lists where the length is known at compile time a little bit nicer.\n\nIf you write a function with the signature\n\n> vector :: ILL input length output => input -> Vector length output\nthen\n\n> v :: Vector 3 Int\n> v = vector (1,2,3)\n>\n> x :: Vector 0 Double\n> x = vector \$ ZeroTuple @Double\n>\n> y :: Vector 1 Double\n> y = vector (OneTuple 1)\n>\n> z :: Vector 2 String\n> z = vector (\"Hello\", \"World\")\n\nIf want matrix literals you can write a function\n\n> matrix :: (ILL row width ty, ILL matrix height row) => matrix -> Matrix width height ty\nthen\n\n> a :: Matrix 0 0 Bool\n> a = matrix \$ ZeroTuple @(ZeroTuple Bool)\n>\n> b :: Matrix 1 2 String\n> b = matrix \$ OneTuple (\"Hello\",\"World\")\n>\n> c :: Matrix 4 5 Double\n> c = matrix ((1,2,3,0,0)\n>            ,(4,5,6,0,0)\n>            ,(7,8,9,0,0)\n>            ,(0,0,0,0,0))\nThe full code is in test\\/Docs.hs\n\nThis only supports literals of length up to 20, though that can be easily extended using the code generator in src\\/Data\\/IndexedListLiterals.hs";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.OneTuple)
        ];
      };
      tests = {
        "IndexedListLiterals-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.indexed-list-literals)
          ];
        };
      };
    };
  }