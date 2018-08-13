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
        name = "tailfile-hinotify";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "diaz.carrete@facebook.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "Tail files in Unix, using hinotify.";
      description = "Tail files in Unix, using hinotify.";
      buildType = "Simple";
    };
    components = {
      "tailfile-hinotify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hinotify)
          (hsPkgs.bytestring)
          (hsPkgs.async)
          (hsPkgs.foldl)
          (hsPkgs.streaming)
          (hsPkgs.pipes)
          (hsPkgs.streaming-eversion)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hinotify)
            (hsPkgs.bytestring)
            (hsPkgs.async)
            (hsPkgs.foldl)
            (hsPkgs.streaming)
            (hsPkgs.pipes)
            (hsPkgs.streaming-eversion)
            (hsPkgs.directory)
            (hsPkgs.conceit)
            (hsPkgs.process-streaming)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
          ];
        };
      };
    };
  }