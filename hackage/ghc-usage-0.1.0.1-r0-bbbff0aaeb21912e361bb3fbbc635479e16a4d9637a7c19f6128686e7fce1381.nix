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
        name = "ghc-usage";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ezyang@cs.stanford.edu";
      author = "Edward Z. Yang";
      homepage = "";
      url = "";
      synopsis = "Print minimal export lists";
      description = "A frontend plugin for computing the minimal export list\nof a module or signature within a package.  This can\nbe used in conjunction with Backpack to easily determine\nthe true set of identifiers which are required from a\nsignature, so that the requirement can be pared down\nto precisely what is required.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc)
          (hsPkgs.containers)
        ];
      };
      exes = {
        "ghc-usage" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.ghc-paths)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }