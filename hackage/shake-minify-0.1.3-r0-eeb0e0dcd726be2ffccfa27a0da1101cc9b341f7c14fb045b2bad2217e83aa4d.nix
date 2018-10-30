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
        name = "shake-minify";
        version = "0.1.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "luke@hoersten.org";
      author = "Luke Hoersten";
      homepage = "https://github.com/LukeHoersten/shake-minify";
      url = "";
      synopsis = "Shake Minify Rules";
      description = "Shake rules to minify CSS and JS files. @shake-minify@\ndoesn't require any external tools to be on the @\$PATH@ and uses\nnative Haskell CSS and JS minifiers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
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