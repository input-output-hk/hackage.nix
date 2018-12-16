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
        name = "yesod-markdown";
        version = "0.12.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Patrick Brisbin <pbrisbin@gmail.com>";
      author = "Alexander Dunlap, Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-markdown";
      url = "";
      synopsis = "Tools for using markdown in a yesod application";
      description = "A subset of Pandoc functionality useful for markdown processing in yesod applications";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
          (hsPkgs.pandoc)
          (hsPkgs.persistent)
          (hsPkgs.shakespeare)
          (hsPkgs.text)
          (hsPkgs.xss-sanitize)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.yesod-markdown)
          ];
        };
      };
    };
  }