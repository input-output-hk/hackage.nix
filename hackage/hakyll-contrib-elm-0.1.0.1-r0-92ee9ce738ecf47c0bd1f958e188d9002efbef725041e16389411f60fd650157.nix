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
        name = "hakyll-contrib-elm";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Erik Stevenson";
      maintainer = "eriknstevenson@gmail.com";
      author = "Erik Stevenson";
      homepage = "https://github.com/narrative/hakyll-contrib-elm#readme";
      url = "";
      synopsis = "Compile Elm code for inclusion in Hakyll static site.";
      description = "A Hakyll extension which allows building and including Elm\nprojects in static sites.";
      buildType = "Simple";
    };
    components = {
      "hakyll-contrib-elm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.hakyll)
          (hsPkgs.process)
          (hsPkgs.temporary)
        ];
      };
      exes = {
        "hakyll-contrib-elm-example" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hakyll)
            (hsPkgs.hakyll-contrib-elm)
          ];
        };
      };
    };
  }