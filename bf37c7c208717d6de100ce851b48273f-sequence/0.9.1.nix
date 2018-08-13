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
        name = "sequence";
        version = "0.9.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "atzeus@gmail.com";
      author = "Atze van der Ploeg";
      homepage = "https://github.com/atzeus/sequence";
      url = "";
      synopsis = "A type class for sequences and various sequence data structures.";
      description = "A type class for sequences and various sequence data structures.";
      buildType = "Simple";
    };
    components = {
      "sequence" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }