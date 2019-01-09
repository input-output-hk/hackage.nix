{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "SFont"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "liamoc@cse.unsw.edu.au";
      author = "Liam O'Connor-Davis";
      homepage = "";
      url = "";
      synopsis = "SFont SDL Bitmap Fonts";
      description = "A haskell port of Karl Bartel's bitmap SFont library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.SDL) (hsPkgs.Sprig) (hsPkgs.array) ];
        };
      };
    }