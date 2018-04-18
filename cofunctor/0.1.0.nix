{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "cofunctor";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "brandon.m.simmons@gmail.com";
        author = "Brandon Simmons";
        homepage = "";
        url = "";
        synopsis = "A small library providing a contravariant functor class";
        description = "This library provides a 'Cofunctor' class useful for types\nthat are sinks or make use of IO effects. See documentation\nfor details.\nSome supporting constructions are also provided.";
        buildType = "Simple";
      };
      components = {
        cofunctor = {
          depends  = [ hsPkgs.base ];
        };
      };
    }