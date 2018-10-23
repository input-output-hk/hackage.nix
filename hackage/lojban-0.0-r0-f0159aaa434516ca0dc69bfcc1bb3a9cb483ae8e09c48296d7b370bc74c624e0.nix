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
        name = "lojban";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done <chrisdone@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "<Project description>";
      description = "<Project description>";
      buildType = "Simple";
    };
    components = {
      "lojban" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.xml)
          (hsPkgs.strict)
          (hsPkgs.parsec)
        ];
      };
    };
  }