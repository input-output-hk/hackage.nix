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
      specVersion = "1.2";
      identifier = {
        name = "HOpenCV";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noam Lewis <jones.noamle@gmail.com>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "A binding for the OpenCV computer vision library";
      description = "Initial version with very limited bindings to OpenCV";
      buildType = "Simple";
    };
    components = {
      "HOpenCV" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.MaybeT)
          (hsPkgs.mtl)
        ];
        libs = [
          (pkgs."cv")
          (pkgs."highgui")
        ];
      };
      exes = {
        "test-hopencv" = {
          depends  = [ (hsPkgs.base) ];
          libs = [
            (pkgs."cv")
            (pkgs."highgui")
          ];
        };
      };
    };
  }