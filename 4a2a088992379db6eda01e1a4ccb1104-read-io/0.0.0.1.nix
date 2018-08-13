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
        name = "read-io";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "firas@zaidan.de";
      author = "Firas Zaidan";
      homepage = "https://github.com/zaidan/read-io#readme";
      url = "";
      synopsis = "Read IO library";
      description = "A lightweight library to read and write data types deriving Read and Show.";
      buildType = "Simple";
    };
    components = {
      "read-io" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.containers)
            (hsPkgs.read-io)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }