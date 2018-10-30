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
        name = "zuramaru";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "aiya000";
      maintainer = "aiya000 <aiya000.develop@gmail.com>";
      author = "aiya000";
      homepage = "https://github.com/aiya000/hs-zuramaru";
      url = "";
      synopsis = "A lisp processor, An inline-lisp, in Haskell";
      description = "A lisp dialect";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.containers)
          (hsPkgs.distributive)
          (hsPkgs.either)
          (hsPkgs.extensible)
          (hsPkgs.extra)
          (hsPkgs.lens)
          (hsPkgs.megaparsec)
          (hsPkgs.mono-traversable)
          (hsPkgs.mtl)
          (hsPkgs.profunctors)
          (hsPkgs.readline)
          (hsPkgs.safe)
          (hsPkgs.safe-exceptions)
          (hsPkgs.singletons)
          (hsPkgs.string-qq)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-show)
          (hsPkgs.throwable-exceptions)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "maru" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.distributive)
            (hsPkgs.either)
            (hsPkgs.extensible)
            (hsPkgs.extra)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.mono-traversable)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.readline)
            (hsPkgs.safe)
            (hsPkgs.safe-exceptions)
            (hsPkgs.singletons)
            (hsPkgs.string-qq)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.throwable-exceptions)
            (hsPkgs.transformers)
            (hsPkgs.zuramaru)
          ];
        };
      };
      tests = {
        "integrate-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.distributive)
            (hsPkgs.either)
            (hsPkgs.extensible)
            (hsPkgs.extra)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.mono-traversable)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.readline)
            (hsPkgs.safe)
            (hsPkgs.safe-exceptions)
            (hsPkgs.singletons)
            (hsPkgs.string-qq)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.throwable-exceptions)
            (hsPkgs.transformers)
            (hsPkgs.silently)
            (hsPkgs.tasty)
            (hsPkgs.tasty-discover)
            (hsPkgs.tasty-hunit)
          ];
        };
        "unit-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.distributive)
            (hsPkgs.either)
            (hsPkgs.extensible)
            (hsPkgs.extra)
            (hsPkgs.lens)
            (hsPkgs.megaparsec)
            (hsPkgs.mono-traversable)
            (hsPkgs.mtl)
            (hsPkgs.profunctors)
            (hsPkgs.readline)
            (hsPkgs.safe)
            (hsPkgs.safe-exceptions)
            (hsPkgs.singletons)
            (hsPkgs.string-qq)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.text-show)
            (hsPkgs.throwable-exceptions)
            (hsPkgs.transformers)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }