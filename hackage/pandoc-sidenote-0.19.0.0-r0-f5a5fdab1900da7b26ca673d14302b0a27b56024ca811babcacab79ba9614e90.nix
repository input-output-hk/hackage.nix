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
        name = "pandoc-sidenote";
        version = "0.19.0.0";
      };
      license = "MIT";
      copyright = "2016 Jake Zimmerman";
      maintainer = "zimmerman.jake@gmail.com";
      author = "Jake Zimmerman";
      homepage = "https://github.com/jez/pandoc-sidenote#readme";
      url = "";
      synopsis = "Convert Pandoc Markdown-style footnotes into sidenotes";
      description = "Convert Pandoc Markdown-style footnotes into sidenotes";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monad-gen)
          (hsPkgs.pandoc)
          (hsPkgs.pandoc-types)
        ];
      };
      exes = {
        "pandoc-sidenote" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.pandoc-sidenote)
            (hsPkgs.pandoc-types)
          ];
        };
      };
    };
  }