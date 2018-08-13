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
        name = "mudbath";
        version = "0.0.2";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "";
      url = "";
      synopsis = "Continuous deployment server for use with GitHub";
      description = "Mudbath is continuous deployment server which integrates with GitHub. It\nlistens for deployment events and when it receives one, executes a shell\nscript. It reports progress back to GitHub in the form of deployment\nstatus updates.\nMudbath can also send notifications to Slack if the proper keys are\nprovided. Other notification sinks can be easily added if needed.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mudbath" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.github-types)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.cryptohash)
          ];
        };
      };
    };
  }