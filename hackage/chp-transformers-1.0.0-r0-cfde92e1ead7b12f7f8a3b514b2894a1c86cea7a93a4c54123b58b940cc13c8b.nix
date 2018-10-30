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
        name = "chp-transformers";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "University of Kent, 2008--2010";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "http://www.cs.kent.ac.uk/projects/ofa/chp/";
      url = "";
      synopsis = "Transformers instances for the CHP library";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.chp)
          (hsPkgs.chp-plus)
          (hsPkgs.transformers)
        ];
      };
    };
  }