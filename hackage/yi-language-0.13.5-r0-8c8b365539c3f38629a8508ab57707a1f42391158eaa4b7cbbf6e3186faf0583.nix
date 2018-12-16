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
        name = "yi-language";
        version = "0.13.5";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Yi developers <yi-devel@googlegroups.com>";
      author = "";
      homepage = "https://github.com/yi-editor/yi#readme";
      url = "";
      synopsis = "Collection of language-related Yi libraries.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.binary)
          (hsPkgs.data-default)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.hashable)
          (hsPkgs.oo-prototypes)
          (hsPkgs.pointedlist)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.microlens-platform)
        ];
        build-tools = [
          (hsPkgs.buildPackages.alex)
        ];
      };
      tests = {
        "tasty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.data-default)
            (hsPkgs.template-haskell)
            (hsPkgs.containers)
            (hsPkgs.hashable)
            (hsPkgs.oo-prototypes)
            (hsPkgs.pointedlist)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.microlens-platform)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.yi-language)
          ];
        };
      };
    };
  }