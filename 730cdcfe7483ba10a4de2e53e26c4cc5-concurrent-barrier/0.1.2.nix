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
        name = "concurrent-barrier";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@goop.org";
      author = "Jeremy Fitzhardinge";
      homepage = "https://github.com/jsgf/concurrent-barrier";
      url = "";
      synopsis = "Simple thread barriers";
      description = "A very simple package providing thread barriers.";
      buildType = "Simple";
    };
    components = {
      "concurrent-barrier" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }