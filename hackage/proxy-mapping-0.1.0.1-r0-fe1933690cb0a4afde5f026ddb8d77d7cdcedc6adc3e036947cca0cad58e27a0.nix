{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "proxy-mapping";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dvde@gmx.net";
      author = "Daniel van den Eijkel";
      homepage = "";
      url = "";
      synopsis = "Mapping of Proxy Types";
      description = "A small collection of functions to map Proxy types";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }