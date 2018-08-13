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
      specVersion = "2";
      identifier = {
        name = "streaming-bracketed";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "diaz_carrete@yahoo.com";
      author = "daniel";
      homepage = "";
      url = "";
      synopsis = "A resource management decorator for \"streaming\".";
      description = "This package provides a decorator for the Stream type from\n\"streaming\", that lets you perform bracket-like\noperations that allocate and deallocate resources used\nby the stream.\n\nBy carefully managing the operations that are lifted to\nthe decorated streams, we can ensure that finalizers are\npromptly called even with operations like \"take\", which do\nnot consume the whole stream.";
      buildType = "Simple";
    };
    components = {
      "streaming-bracketed" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.streaming)
        ];
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.streaming)
            (hsPkgs.doctest)
            (hsPkgs.directory)
            (hsPkgs.filepath)
          ];
        };
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.streaming)
            (hsPkgs.streaming-commons)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.streaming-bracketed)
          ];
        };
      };
    };
  }