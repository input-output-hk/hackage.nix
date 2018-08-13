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
      specVersion = "1.6";
      identifier = {
        name = "fsharp";
        version = "0.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Heather Cynede <Cynede@Gentoo.org>";
      author = "Heather Cynede";
      homepage = "";
      url = "";
      synopsis = "some F# operators, high priority pipes";
      description = "Some F# operators, high priority pipes, etc...";
      buildType = "Simple";
    };
    components = {
      "fsharp" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }