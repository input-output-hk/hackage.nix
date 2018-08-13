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
        name = "eager-sockets";
        version = "0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "(c) 2014 Toralf Wittner";
      maintainer = "Toralf Wittner <tw@dtex.org>";
      author = "Toralf Wittner";
      homepage = "";
      url = "";
      synopsis = "Socket operations with timeouts";
      description = "Socket operations such as connect\\/receive\\/send with timeouts.";
      buildType = "Simple";
    };
    components = {
      "eager-sockets" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
        ];
      };
    };
  }