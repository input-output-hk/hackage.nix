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
        name = "FastPush";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dev@yager.io";
      author = "Will Yager";
      homepage = "https://github.com/wyager/FastPush/";
      url = "";
      synopsis = "A monad and monad transformer for pushing things onto a stack very fast.";
      description = "This library gives you a monad that lets you push things onto a stack very quickly.\nYou get things off the stack when you run the monad. Under the hood, this uses mutable\nvectors. I've also included a monad transformer using the STMonadTrans library that\ndoes the same thing as a transformer, but it's probably very unsafe.";
      buildType = "Simple";
    };
    components = {
      "FastPush" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
          (hsPkgs.STMonadTrans)
        ];
      };
    };
  }