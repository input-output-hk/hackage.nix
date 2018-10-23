{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "rallod";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Parker, Matt <moonmaster9000@gmail.com>";
      author = "Parker, Matt";
      homepage = "http://github.com/moonmaster9000/rallod";
      url = "";
      synopsis = "'\$' in reverse.";
      description = "A Simple package that exports '==>', which operates in the opposite direction of '\$'.";
      buildType = "Simple";
    };
    components = {
      "rallod" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
        ];
      };
    };
  }