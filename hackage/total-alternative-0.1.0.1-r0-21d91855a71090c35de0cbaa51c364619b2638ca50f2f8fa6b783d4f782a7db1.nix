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
        name = "total-alternative";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 guaraqe";
      maintainer = "guaraqe@openmailbox.org";
      author = "guaraqe";
      homepage = "http://github.com/guaraqe/total-alternative#readme";
      url = "";
      synopsis = "Alternative interface for total versions of\npartial function on the Prelude.";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }