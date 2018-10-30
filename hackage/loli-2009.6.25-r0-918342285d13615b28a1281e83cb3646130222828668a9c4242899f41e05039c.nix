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
      specVersion = "1.2";
      identifier = {
        name = "loli";
        version = "2009.6.25";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/loli";
      url = "";
      synopsis = "loli";
      description = "A minimum web dev DSL in Haskell";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.data-default)
          (hsPkgs.hack)
          (hsPkgs.hack-contrib)
          (hsPkgs.utf8-string)
          (hsPkgs.mps)
          (hsPkgs.mtl)
        ];
      };
    };
  }