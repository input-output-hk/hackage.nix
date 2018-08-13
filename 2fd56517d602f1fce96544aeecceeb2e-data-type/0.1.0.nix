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
      specVersion = "1.2.3";
      identifier = {
        name = "data-type";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Iain Alexander <ia@stryx.demon.co.uk>";
      author = "Iain Alexander <ia@stryx.demon.co.uk>";
      homepage = "";
      url = "";
      synopsis = "Basic type wrangling types and classes";
      description = "Primitive types and classes for\nOleg-inspired type[class] manipulation";
      buildType = "Simple";
    };
    components = {
      "data-type" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }