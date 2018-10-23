{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "yesod-articles";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mattaeads@gmail.com";
      author = "Matthew Eads";
      homepage = "https://github.com/matthew-eads/yesod-articles";
      url = "";
      synopsis = "Automatically generate article previews for a yesod site";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yesod-articles" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.regex-compat)
          (hsPkgs.template-haskell)
          (hsPkgs.dates)
          (hsPkgs.text)
          (hsPkgs.shakespeare)
          (hsPkgs.directory)
          (hsPkgs.th-lift-instances)
          (hsPkgs.blaze-html)
          (hsPkgs.filepath)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.regex-compat)
            (hsPkgs.template-haskell)
            (hsPkgs.dates)
            (hsPkgs.text)
            (hsPkgs.shakespeare)
            (hsPkgs.directory)
            (hsPkgs.th-lift-instances)
            (hsPkgs.blaze-html)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.yesod-test)
            (hsPkgs.yesod-articles)
          ];
        };
      };
    };
  }