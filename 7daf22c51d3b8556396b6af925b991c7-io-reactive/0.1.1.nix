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
      specVersion = "0";
      identifier = {
        name = "io-reactive";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andy Gill <andygill@ku.edu>";
      author = "Andy Gill";
      homepage = "";
      url = "";
      synopsis = "An API for generating TIMBER style reactive objects.";
      description = "An API for generating reactive objects, as used in the TIMBER programming language.";
      buildType = "Simple";
    };
    components = {
      "io-reactive" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "io-reactive-test" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }