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
        name = "scotty-view";
        version = "1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "philemon.bouzy@gmail.com";
      author = "Philémon Bouzy";
      homepage = "";
      url = "";
      synopsis = "";
      description = "An extension for Scotty allowing its user to build an HTML\npage easily. This library can also read an HTML page from a\nfile and modify it.\nGithub repository: https:\\/\\/github.com\\/PhilemonBouzy\\/scotty-view";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.scotty)
          (hsPkgs.text)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "web" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.scotty)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.scotty-view)
          ];
        };
      };
    };
  }