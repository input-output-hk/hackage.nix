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
        name = "old-time";
        version = "1.0.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Time library";
      description = "This package provides the old time library.\nFor new code, the new time library is recommended.";
      buildType = "Configure";
    };
    components = {
      "old-time" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-locale)
        ];
      };
    };
  }