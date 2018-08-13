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
        name = "scrz";
        version = "0.0.0.1";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "tomas.carnecky@gmail.com";
      author = "Tomas Carnecky";
      homepage = "http://github.com/wereHamster/scrz";
      url = "";
      synopsis = "Process management and supervision daemon";
      description = "@scrz@ is a daemon that runs and monitors other processes.\nIt is similar to djb's `daemontools`, the Ruby project `god`\nor Haskell's `Angel`.\nIt's goals are to keep a set of services running, and to\nfacilitate the easy configuration and restart of those\nservices.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "scrz" = {
          depends  = [
            (hsPkgs.MonadRandom)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.cryptohash)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.friendly-time)
            (hsPkgs.hashable)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.process)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }