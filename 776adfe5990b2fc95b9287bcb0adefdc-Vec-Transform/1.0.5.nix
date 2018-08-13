{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Vec-Transform";
        version = "1.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Tobias Bexelius";
      maintainer = "Tobias Bexelius";
      author = "Tobias Bexelius";
      homepage = "https://github.com/tobbebex/Vec-Transform";
      url = "";
      synopsis = "Extends the Vec package with some 4x4 transform matrices";
      description = "This package adds some 4x4 transform matrices to the Vec package, that is useful in graphics applications, such as those written with the GPipe package.\nSpecifically, it adds translation, scaling, rotation, perspective projection and orthogonal projection matrices.";
      buildType = "Simple";
    };
    components = {
      "Vec-Transform" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Vec)
        ];
      };
    };
  }