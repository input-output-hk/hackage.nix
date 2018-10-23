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
        name = "cofunctor";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "brandon.m.simmons@gmail.com";
      author = "Brandon Simmons";
      homepage = "";
      url = "";
      synopsis = "DEPRECATED: use the \"contravariant\" package";
      description = "This library provides a 'Cofunctor' class useful for types\nthat are sinks or make use of IO effects. See documentation\nfor details.\nSome supporting constructions are also provided.";
      buildType = "Simple";
    };
    components = {
      "cofunctor" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }