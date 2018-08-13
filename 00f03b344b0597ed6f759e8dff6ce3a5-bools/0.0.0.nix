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
      specVersion = "1.8";
      identifier = {
        name = "bools";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2013 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Functions for dealing with bools";
      description = "Functions for dealing with bools";
      buildType = "Simple";
    };
    components = {
      "bools" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }