{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "fsharp";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "";
      homepage = "";
      url = "";
      synopsis = "some F# operators, high priority pipes";
      description = "";
      buildType = "Simple";
    };
    components = {
      "fsharp" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }