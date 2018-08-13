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
      specVersion = "1.8";
      identifier = {
        name = "witty";
        version = "0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "https://github.com/kazu-yamamoto/witty/blob/master/README.md";
      url = "";
      synopsis = "A network server to show bottlenecks of GHC";
      description = "A network server to show bottlenecks of GHC";
      buildType = "Simple";
    };
    components = {
      exes = {
        "witty" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }