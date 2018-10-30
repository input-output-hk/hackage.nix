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
        name = "type-combinators-quote";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Kyle Carter, all rights reserved";
      maintainer = "kylcarte@gmail.com";
      author = "Kyle Carter";
      homepage = "https://github.com/kylcarte/type-combinators-quote";
      url = "";
      synopsis = "Quasiquoters for the 'type-combinators' package.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-combinators)
          (hsPkgs.template-haskell)
          (hsPkgs.haskell-src-meta)
        ];
      };
    };
  }