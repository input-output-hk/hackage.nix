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
      specVersion = "1.10";
      identifier = {
        name = "CLI";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "g960059@gmail.com";
      author = "g960059";
      homepage = "";
      url = "";
      synopsis = "CLI tools";
      description = "Usful CLI tools";
      buildType = "Simple";
    };
    components = {
      "CLI" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.time)
          (hsPkgs.directory)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }