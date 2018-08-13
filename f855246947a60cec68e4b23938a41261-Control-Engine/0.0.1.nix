{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      small_base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "Control-Engine";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Thomas DuBuisson";
      author = "Thomas DuBuisson <thomas.dubuisson@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A parallel producer/consumer engine (thread pool)";
      description = "A parallel producer/consumer engine (thread pool).  There are lots\nof features in the Engine, to include dynamically adjustable hooks,\nmanaged state, and injection points.";
      buildType = "Simple";
    };
    components = {
      "Control-Engine" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.stm)
        ];
      };
    };
  }