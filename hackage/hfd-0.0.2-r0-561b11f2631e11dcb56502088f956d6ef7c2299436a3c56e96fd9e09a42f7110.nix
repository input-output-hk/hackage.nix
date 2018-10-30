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
      specVersion = "1.6";
      identifier = {
        name = "hfd";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shumovichy@gmail.com";
      author = "Yuras Shumovich";
      homepage = "";
      url = "";
      synopsis = "Flash debugger";
      description = "Flash debugger. You need debug flash player installed to use it.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hfd" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.haskeline)
            (hsPkgs.iteratee)
            (hsPkgs.bytestring)
            (hsPkgs.MonadCatchIO-transformers)
            (hsPkgs.transformers)
            (hsPkgs.MissingH)
          ];
        };
      };
    };
  }