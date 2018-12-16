{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { haste-inst = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haste-perch";
        version = "0.1.0.3";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "agocorona@gmail.com";
      author = "Alberto G. Corona";
      homepage = "https://github.com/agocorona/haste-perch";
      url = "";
      synopsis = "Create, navigate and modify the DOM tree with composable syntax, with the haste compiler";
      description = "see the description at the homepage.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = if flags.haste-inst
          then [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.haste-lib)
          ]
          else [
            (hsPkgs.base)
            (hsPkgs.transformers)
            (hsPkgs.haste-compiler)
          ];
      };
    };
  }