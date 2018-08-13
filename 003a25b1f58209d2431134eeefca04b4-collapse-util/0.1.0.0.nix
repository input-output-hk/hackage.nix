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
        name = "collapse-util";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mwotton@gmail.com";
      author = "Mark Wotton";
      homepage = "http://github.com/mwotton/collapse";
      url = "";
      synopsis = "utility for collapsing adjacent writes";
      description = "";
      buildType = "Simple";
    };
    components = {
      exes = {
        "collapse" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }