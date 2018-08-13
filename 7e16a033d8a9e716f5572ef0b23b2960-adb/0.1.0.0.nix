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
        name = "adb";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "adb.protocol.stephen@blacksapphire.com";
      author = "Stephen Blackheath";
      homepage = "";
      url = "";
      synopsis = "Android Debug Bridge (ADB) protocol";
      description = "";
      buildType = "Simple";
    };
    components = {
      "adb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.containers)
          (hsPkgs.cereal)
        ];
      };
    };
  }