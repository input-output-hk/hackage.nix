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
      specVersion = "1.6";
      identifier = {
        name = "tasty-smallcheck";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka <roma@ro-che.info>";
      homepage = "https://github.com/feuerbach/tasty";
      url = "";
      synopsis = "SmallCheck support for the Tasty test framework.";
      description = "SmallCheck support for the Tasty test framework.";
      buildType = "Simple";
    };
    components = {
      "tasty-smallcheck" = {
        depends  = [
          (hsPkgs.tasty)
          (hsPkgs.smallcheck)
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.tagged)
        ];
      };
    };
  }