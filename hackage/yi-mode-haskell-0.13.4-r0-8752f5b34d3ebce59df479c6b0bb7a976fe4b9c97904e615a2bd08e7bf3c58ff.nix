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
        name = "yi-mode-haskell";
        version = "0.13.4";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Yi editor haskell mode";
      description = "";
      buildType = "Simple";
    };
    components = {
      "yi-mode-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.data-default)
          (hsPkgs.microlens-platform)
          (hsPkgs.text)
          (hsPkgs.yi-core)
          (hsPkgs.yi-language)
          (hsPkgs.yi-rope)
        ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.data-default)
            (hsPkgs.microlens-platform)
            (hsPkgs.text)
            (hsPkgs.yi-core)
            (hsPkgs.yi-language)
            (hsPkgs.yi-rope)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.microlens-platform)
            (hsPkgs.pointedlist)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.yi-mode-haskell)
          ];
        };
      };
    };
  }