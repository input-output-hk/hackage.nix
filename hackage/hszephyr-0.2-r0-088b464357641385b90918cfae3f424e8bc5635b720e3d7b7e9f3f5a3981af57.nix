{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hszephyr";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Nelson Elhage <nelhage@nelhage.com>";
      author = "Nelson Elhage <nelhage@nelhage.com>";
      homepage = "";
      url = "";
      synopsis = "Simple libzephyr bindings";
      description = "Network.Zephyr provides haskell bindings to MIT's \"Zephyr\" instant\nmessaging / notification service.";
      buildType = "Simple";
    };
    components = {
      "hszephyr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.time)
        ];
        libs = [
          (pkgs."zephyr")
          (pkgs."com_err")
        ];
      };
    };
  }