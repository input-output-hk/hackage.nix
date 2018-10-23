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
        name = "haroonga";
        version = "0.1.2.0";
      };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "cosmo0920.wp@gmail.com";
      author = "cosmo0920";
      homepage = "";
      url = "";
      synopsis = "Low level bindings for Groonga.";
      description = "Bindings to Groonga  <http://groonga.org/>.";
      buildType = "Simple";
    };
    components = {
      "haroonga" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.resourcet)
          (hsPkgs.transformers)
          (hsPkgs.monad-control)
        ];
        pkgconfig = [
          (pkgconfPkgs.groonga)
        ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }