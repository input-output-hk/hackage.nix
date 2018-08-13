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
      specVersion = "1.10";
      identifier = {
        name = "snaplet-haxl";
        version = "0.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "chris@christopherbiscardi.com";
      author = "Christopher Biscardi";
      homepage = "https://github.com/ChristopherBiscardi/snaplet-haxl";
      url = "";
      synopsis = "Snaplet for Facebook's Haxl";
      description = "A Snaplet for the integration of Haxl DataSources with Snap.";
      buildType = "Simple";
    };
    components = {
      "snaplet-haxl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haxl)
          (hsPkgs.snap)
          (hsPkgs.MonadCatchIO-transformers)
          (hsPkgs.transformers)
        ];
      };
    };
  }