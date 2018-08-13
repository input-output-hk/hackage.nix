{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "true-name";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "© 2014−2016 Liyang HU";
      maintainer = "true-name@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/true-name";
      url = "";
      synopsis = "Template Haskell hack to violate module abstractions";
      description = "<http://tvtropes.org/pmwiki/pmwiki.php/Main/IKnowYourTrueName Knowing a true name gives one power over its owner>.\n\nA Template Haskell hack to get unexported @Name@s―be they types, data\nconstructors, record fields or class methods―a slightly less unsafe way\nto violate another module's abstractions than @unsafeCoerce@.\n\nA few <https://github.com/liyang/true-name/blob/master/sanity.hs quick examples>.\n\nI'm too lazy to keep a changelog, but I do write <https://github.com/liyang/true-name/commits/master detailed commit messages>.";
      buildType = "Simple";
    };
    components = {
      "true-name" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "sanity" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.time)
            (hsPkgs.template-haskell)
            (hsPkgs.true-name)
          ];
        };
      };
    };
  }