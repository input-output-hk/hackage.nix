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
      specVersion = "1.10";
      identifier = {
        name = "pong-server";
        version = "0.0.4.0";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "2017 Robert Fischer";
      maintainer = "smokejumperit+pong-server@gmail.com";
      author = "Robert Fischer";
      homepage = "http://github.com/RobertFischer/pong-server#readme";
      url = "";
      synopsis = "A simple embedded pingable server that runs in the background.";
      description = "Please see README.md on GitHub";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.classy-prelude)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.exceptions)
          (hsPkgs.monad-control)
        ];
      };
      tests = {
        "pong-server-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pong-server)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.network)
          ];
        };
      };
    };
  }