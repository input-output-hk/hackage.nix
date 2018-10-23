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
        name = "snaplet-postmark";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/snaplet-postmark";
      url = "";
      synopsis = "Postmark snaplet for the Snap Framework";
      description = "This snaplet contains support for using the Postmark\nemail system with a Snap Framework application.";
      buildType = "Simple";
    };
    components = {
      "snaplet-postmark" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.snap)
          (hsPkgs.text)
          (hsPkgs.configurator)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.postmark)
        ];
      };
    };
  }