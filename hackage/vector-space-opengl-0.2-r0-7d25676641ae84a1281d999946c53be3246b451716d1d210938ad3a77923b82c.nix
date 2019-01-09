{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "vector-space-opengl"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acfoltzer@gmail.com";
      author = "Adam C. Foltzer";
      homepage = "";
      url = "";
      synopsis = "Instances of vector-space classes for OpenGL types";
      description = "Instances of <http://hackage.haskell.org/package/vector-space> classes for 'OpenGL' types.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.OpenGL) (hsPkgs.vector-space) ];
        };
      tests = {
        "test-vector-space-opengl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.OpenGL)
            (hsPkgs.ieee754)
            (hsPkgs.vector-space)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            ];
          };
        };
      };
    }