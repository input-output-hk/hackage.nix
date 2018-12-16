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
        name = "cluss";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Yusuke Matsushita 2014";
      maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
      author = "Yusuke Matsushita";
      homepage = "https://github.com/Kinokkory/cluss";
      url = "";
      synopsis = "simple alternative to type classes";
      description = "A <b>cluss</b> enables you to achieve function overloading, or ad-hoc polymorphism,\nwithout creating a new type class.\n\nIn order to give ad-hoc polymorphism to a type variable @a@,\nyou simply use @'In'@ with a list of \\\"type patterns\\\" like @In [Type T, ...] a@,\nwhich indicates that the type matches some of the patterns;\nwhich is analogous to a type class indicating that a type matches some of its \\\"instances\\\".\nThe constraint @In [Type T, ...] a@ is what we call a \\\"cluss\\\".\n\nClusses can easily be used in a nested way\nand even be __recursive__;\ntherefore, they are /expressive/ enough to imitate Haskell-98-style type classes.\n\nClusses, /however/, go beyond a mere alternative to type classes.\nThey have __closed__ and __prioritized__ instances and __open__ methods,\nwhile type classes have open and unprioritized instances and closed methods.\nThose properties give clusses the advantages different from type classes:\n\n* You can /judge/ whether a type @a@ belongs to a cluss @'In' as@,\non some level, writing @Has as a@,\nsince cluss instances are closed.\n\n* You can make cluss instances more /flexibly/,\nwithout causing overlapping instances or incoherent instances,\nsince cluss instances are prioritized.\n\n* You can /create/ new methods for clusses anywhere in any module,\nsince cluss methods are open.\n\nMore information can be found in the <http://hackage.haskell.org/package/cluss hackage's haddock> or the <http://kinokkory.github.io/cluss/ updated haddock>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }