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
      specVersion = "1.2";
      identifier = {
        name = "marked-pretty";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andygill@ku.edu";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Pretty-printing library, with scoping, based on pretty-1.0.0.0";
      description = "This package contains a pretty-printing library, with scoping.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = { "test" = {}; };
    };
  }