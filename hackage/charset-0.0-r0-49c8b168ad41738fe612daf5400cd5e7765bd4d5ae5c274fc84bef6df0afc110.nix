{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "charset";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Edward Kmett 2010";
      maintainer = "ekmett@gmail.com";
      author = "Edward Kmett";
      homepage = "http://github.com/ekmett/charset";
      url = "";
      synopsis = "Fast unicode character sets";
      description = "Fast unicode character sets";
      buildType = "Simple";
    };
    components = {
      "charset" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
    };
  }