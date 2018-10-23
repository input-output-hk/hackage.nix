{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "shake-minify";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/shake-minify";
      url = "";
      synopsis = "Shake Minify Actions";
      description = "Shake minify actions for CSS and JS files.";
      buildType = "Simple";
    };
    components = {
      "shake-minify" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.css-text)
          (hsPkgs.hjsmin)
          (hsPkgs.shake)
          (hsPkgs.text)
        ];
      };
    };
  }