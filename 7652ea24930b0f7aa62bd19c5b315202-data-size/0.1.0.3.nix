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
        name = "data-size";
        version = "0.1.0.3";
      };
      license = "MIT";
      copyright = "2013 Uwe Schmidt";
      maintainer = "uwe@fh-wedel.de";
      author = "Uwe Schmidt";
      homepage = "";
      url = "";
      synopsis = "Profiling of data structures";
      description = "Profiling of data structures\nfor counting the # of object allocated for a value\nand estimating the total # of words used for a value.\nStatistics for every type or constructor\noccuring as component or subcomponent are gathered.";
      buildType = "Simple";
    };
    components = {
      "data-size" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
        ];
      };
    };
  }