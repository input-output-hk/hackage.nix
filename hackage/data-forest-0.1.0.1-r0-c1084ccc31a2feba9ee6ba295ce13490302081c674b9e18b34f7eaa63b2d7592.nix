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
        name = "data-forest";
        version = "0.1.0.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Chris Martin <ch.martin@gmail.com>";
      author = "Chris Martin <ch.martin@gmail.com>";
      homepage = "https://github.com/chris-martin/haskell-libraries";
      url = "";
      synopsis = "A simple multi-way tree data structure.";
      description = "In some contexts, forests (collections zero or more trees) are more important than trees. The /data-forest/ library provides a @Tree@ type much like the one from the popular /containers/ library, but it also provides a @Forest@ type with its own @Functor@ and @Foldable@ instances.";
      buildType = "Simple";
    };
    components = {
      "data-forest" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
            (hsPkgs.forest)
          ];
        };
      };
    };
  }