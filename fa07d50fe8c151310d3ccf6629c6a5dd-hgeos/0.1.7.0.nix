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
        name = "hgeos";
        version = "0.1.7.0";
      };
      license = "MIT";
      copyright = "(C) 2016 Richard Cook";
      maintainer = "Richard Cook <rcook@rcook.org>";
      author = "Richard Cook <rcook@rcook.org>";
      homepage = "https://github.com/rcook/hgeos#readme";
      url = "";
      synopsis = "Simple Haskell bindings to GEOS C API";
      description = "Simple Haskell bindings to the <https://trac.osgeo.org/geos/ GEOS>\n<http://geos.osgeo.org/doxygen/geos__c_8h_source.html C API> heavily inspired\nby <https://github.com/django/django/tree/master/django/contrib/gis/geos Django GEOS bindings>";
      buildType = "Custom";
    };
    components = {
      "hgeos" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
        ];
        libs = [ (pkgs."geos_c") ];
      };
      tests = {
        "hgeos-app" = {
          depends  = [
            (hsPkgs.MissingH)
            (hsPkgs.base)
            (hsPkgs.hgeos)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }