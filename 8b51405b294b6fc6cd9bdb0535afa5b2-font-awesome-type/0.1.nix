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
        name = "font-awesome-type";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Sean Leather";
      maintainer = "sean.leather@gmail.com";
      author = "Sean Leather";
      homepage = "https://github.com/spl/font-awesome-type";
      url = "";
      synopsis = "A Font Awesome data type enumerating all icon classes";
      description = "This package contains a simple but comprehensive enumeration of all Font\nAwesome (<http://fontawesome.io/>) icon classes as a data type. A library can\nuse this data type and the conversion to CSS class strings to provide a safer\ninterface for referencing Font Awesome icons than using strings alone.";
      buildType = "Simple";
    };
    components = {
      "font-awesome-type" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }