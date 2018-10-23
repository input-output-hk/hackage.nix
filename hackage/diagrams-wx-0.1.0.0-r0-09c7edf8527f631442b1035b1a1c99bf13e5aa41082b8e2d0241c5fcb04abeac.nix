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
        name = "diagrams-wx";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Michael Smith";
      maintainer = "Michael Smith <michael@spinda.net>";
      author = "Michael Smith";
      homepage = "https://github.com/spinda/diagrams-wx#readme";
      url = "";
      synopsis = "Backend for rendering diagrams in wxWidgets";
      description = "An optional add-on to the diagrams-cairo package which\nallows rendering diagrams in wxWidgets (using wxHaskell).";
      buildType = "Simple";
    };
    components = {
      "diagrams-wx" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cairo)
          (hsPkgs.diagrams-cairo)
          (hsPkgs.diagrams-lib)
          (hsPkgs.wx)
          (hsPkgs.wxcore)
        ];
      };
      exes = {
        "diagrams-wx-demo" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.diagrams-wx)
            (hsPkgs.cairo)
            (hsPkgs.diagrams-cairo)
            (hsPkgs.diagrams-lib)
            (hsPkgs.wx)
            (hsPkgs.wxcore)
          ];
        };
      };
    };
  }