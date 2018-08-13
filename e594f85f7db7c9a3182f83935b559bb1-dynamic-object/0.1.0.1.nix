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
        name = "dynamic-object";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "muranushi@gmail.com";
      author = "Takayuki Muranushi";
      homepage = "";
      url = "";
      synopsis = "Object-oriented programming with singleton methods\nand duck typing.";
      description = "This package provides Object-oriented programming\nfound in dynamically-typed languages such as\npython or ruby.\n\n@Object@ is implemented as @Map@ from method keys\nto values. Different keys can have different value types\n";
      buildType = "Simple";
    };
    components = {
      "dynamic-object" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.lens)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }