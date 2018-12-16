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
        name = "regexp-tries";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Andreas Baldeau <andreas@baldeau.net>";
      author = "Andreas Baldeau";
      homepage = "http://github.com/baldo/regexp-tries";
      url = "";
      synopsis = "Regular Expressions on Tries.";
      description = "Regular Expressions on Tries.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.derive-trie)
          (hsPkgs.template-haskell)
          (hsPkgs.weighted-regexp)
        ];
      };
    };
  }