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
        name = "threepenny-gui-flexbox";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Jeremy Barisch-Rooney";
      maintainer = "barischj@tcd.ie";
      author = "Jeremy Barisch-Rooney";
      homepage = "https://github.com/barischj/threepenny-gui-flexbox";
      url = "";
      synopsis = "Flexbox layouts for Threepenny-gui.";
      description = "See the homepage";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clay)
          (hsPkgs.text)
          (hsPkgs.threepenny-gui)
        ];
      };
      exes = {
        "threepenny-flexbox-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.threepenny-gui)
            (hsPkgs.threepenny-gui-flexbox)
          ];
        };
      };
    };
  }