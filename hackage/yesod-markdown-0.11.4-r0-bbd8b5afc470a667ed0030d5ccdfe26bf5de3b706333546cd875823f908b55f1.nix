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
      specVersion = "1.8";
      identifier = {
        name = "yesod-markdown";
        version = "0.11.4";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Patrick Brisbin <pbrisbin@gmail.com>";
      author = "Alexander Dunlap, Patrick Brisbin";
      homepage = "http://github.com/pbrisbin/yesod-markdown";
      url = "";
      synopsis = "Tools for using markdown in a yesod application";
      description = "A subset of pandoc functionality useful for markdown processing in yesod applications";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.pandoc)
          (hsPkgs.blaze-html)
          (hsPkgs.blaze-markup)
          (hsPkgs.xss-sanitize)
          (hsPkgs.directory)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-form)
          (hsPkgs.shakespeare)
          (hsPkgs.persistent)
          (hsPkgs.texmath)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-markdown)
            (hsPkgs.hspec)
            (hsPkgs.blaze-html)
            (hsPkgs.text)
          ];
        };
      };
    };
  }