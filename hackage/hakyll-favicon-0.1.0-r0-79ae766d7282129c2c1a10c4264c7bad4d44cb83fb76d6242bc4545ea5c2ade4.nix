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
        name = "hakyll-favicon";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Elie Genard";
      maintainer = "elaye.github.io@gmail.com";
      author = "Elie Genard";
      homepage = "https://github.com/elaye/hakyll-favicon#README.md";
      url = "";
      synopsis = "";
      description = "Generate favicons for Hakyll websites";
      buildType = "Simple";
    };
    components = {
      "hakyll-favicon" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.hakyll)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hakyll-favicon)
            (hsPkgs.hakyll)
          ];
        };
      };
      tests = {
        "hakyll-favicon-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hakyll-favicon)
          ];
        };
      };
    };
  }