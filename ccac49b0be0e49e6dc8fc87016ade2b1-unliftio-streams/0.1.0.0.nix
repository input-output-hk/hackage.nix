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
      specVersion = "1.24";
      identifier = {
        name = "unliftio-streams";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Generalization of io-streams to MonadUnliftIO";
      description = "Generalization of io-streams to MonadUnliftIO.";
      buildType = "Simple";
    };
    components = {
      "unliftio-streams" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.text)
          (hsPkgs.unliftio-core)
        ];
      };
    };
  }