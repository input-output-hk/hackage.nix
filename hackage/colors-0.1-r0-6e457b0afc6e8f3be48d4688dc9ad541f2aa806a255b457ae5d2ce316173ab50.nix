{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "colors";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Fumiaki Kinoshita";
      homepage = "https://github.com/fumieval/colors";
      url = "";
      synopsis = "A type for colors";
      description = "";
      buildType = "Simple";
    };
    components = {
      "colors" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.profunctors)
        ];
      };
    };
  }