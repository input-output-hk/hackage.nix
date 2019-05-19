{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "yi-language"; version = "0.1.0.4"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "yi-devel@googlegroups.com";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/yi-editor/yi-language";
      url = "";
      synopsis = "Collection of language-related Yi libraries.";
      description = "Collection of language-related Yi libraries: lexers, scanners…";
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
          (hsPkgs.lens)
          (hsPkgs.oo-prototypes)
          (hsPkgs.pointedlist)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
          (hsPkgs.derive)
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.binary)
            (hsPkgs.containers)
            (hsPkgs.data-default)
            (hsPkgs.derive)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.hspec)
            (hsPkgs.lens)
            (hsPkgs.pointedlist)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers-base)
            (hsPkgs.unordered-containers)
            (hsPkgs.QuickCheck)
            (hsPkgs.yi-language)
            ];
          };
        };
      };
    }