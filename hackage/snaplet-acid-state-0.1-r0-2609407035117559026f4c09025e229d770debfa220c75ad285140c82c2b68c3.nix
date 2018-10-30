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
      specVersion = "1.6";
      identifier = {
        name = "snaplet-acid-state";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mightybyte@gmail.com";
      author = "Doug Beardsley";
      homepage = "";
      url = "";
      synopsis = "acid-state snaplet for Snap Framework";
      description = "This snaplet that makes it easy to use acid-state in a Snap\napplication.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.acid-state)
          (hsPkgs.base)
          (hsPkgs.snap)
          (hsPkgs.text)
        ];
      };
    };
  }