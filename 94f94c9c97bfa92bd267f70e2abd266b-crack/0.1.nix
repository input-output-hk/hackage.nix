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
      specVersion = "1.2.0";
      identifier = {
        name = "crack";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "(c) 2008. Trevor Elliott <trevor@geekgateway.com>";
      maintainer = "trevor@geekgateway.com";
      author = "Trevor Elliott";
      homepage = "";
      url = "";
      synopsis = "A haskell binding to cracklib";
      description = "A haskell binding to cracklib";
      buildType = "Configure";
    };
    components = {
      "crack" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs."crack") ];
      };
    };
  }