{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cluss"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2014 Yusuke Matsushita";
      maintainer = "Yusuke Matsushita <y.skm24t@gmail.com>";
      author = "Yusuke Matsushita";
      homepage = "https://github.com/Kinokkory/cluss";
      url = "";
      synopsis = "simple alternative to type classes";
      description = "A /cluss/ enables you to achieve /function overloading/, or ad-hoc polymorphism,\nwithout creating a new type class.\n\nIn order to give ad-hoc polymorphism to a type variable @a@,\nyou simply use @In@ with a list of \\\"type patterns\\\" like @In [Type T, ...] a@,\nwhich indicates that the type matches some of the patterns;\nwhich is analogous to a type class indicating that a type matches some of its \\\"instances\\\".\nThe constraint @In [Type T, ...] a@ is what we call a \\\"cluss\\\".\n\nCluss instances are /closed/ and cluss methods are /open/,\nunlike type classes, whose instances are open and whose methods are closed.\n\nClusses can easily be used in a nested way,\nand can even be /recursive/, just like recursive type classes,\nand therefore clusses are expressive enough to imitate Haskell-98-style type classes.\n\nMore information can be found in the Haddock or the comments in the source code.\nThe updated haddock is here: <http://kinokkory.github.io/cluss/>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }