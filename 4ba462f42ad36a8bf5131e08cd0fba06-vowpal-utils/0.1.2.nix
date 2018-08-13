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
        name = "vowpal-utils";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Carter Schonwald  Copyright (c) 2012";
      maintainer = "first dot last at gmail dot com";
      author = "Carter Tazio Schonwald";
      homepage = "https://github.com/cartazio/Vowpal-Utils";
      url = "";
      synopsis = "Vowpal Wabbit utilities";
      description = "Vowpal Wabbit hash and utils";
      buildType = "Simple";
    };
    components = {
      "vowpal-utils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
        ];
      };
    };
  }