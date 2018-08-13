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
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "© 2014−2015 Liyang HU";
      maintainer = "true-name@liyang.hu";
      author = "Liyang HU";
      homepage = "https://github.com/liyang/true-name";
      url = "";
      synopsis = "Template Haskell hack to violate another module's abstractions";
      description = "<http://tvtropes.org/pmwiki/pmwiki.php/Main/IKnowYourTrueName Knowing a true name gives one power over its owner>.\n\nA Template Haskell hack to get unexported @Name@s―be they data\nconstructors, record fields or class methods―a slightly less unsafe way\nto violate another module's abstractions than @unsafeCoerce@.\n\nA few <https://github.com/liyang/true-name/blob/master/sanity.hs quick examples>.";
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