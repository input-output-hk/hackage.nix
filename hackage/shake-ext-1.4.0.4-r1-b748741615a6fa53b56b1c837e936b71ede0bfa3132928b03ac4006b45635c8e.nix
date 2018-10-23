{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      development = false;
    };
    package = {
      specVersion = "1.18";
      identifier = {
        name = "shake-ext";
        version = "1.4.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018 Vanessa McHale";
      maintainer = "vamchale@gmail.com";
      author = "Vanessa McHale";
      homepage = "https://hub.darcs.net/vmchale/shake-ext";
      url = "";
      synopsis = "Helper functions for linting with shake";
      description = "This package provides several linters out of the box, as well as functionality for building ATS source files with [shake](http://shakebuild.com/).";
      buildType = "Simple";
    };
    components = {
      "shake-ext" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.shake)
          (hsPkgs.language-ats)
          (hsPkgs.mtl)
          (hsPkgs.composition-prelude)
          (hsPkgs.directory)
          (hsPkgs.text)
        ];
      };
    };
  }