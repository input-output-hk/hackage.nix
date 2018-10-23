{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hail";
        version = "0.1.0.1";
      };
      license = "Apache-2.0";
      copyright = "(c) 2017, Takt Inc.";
      maintainer = "shea.levy@takt.com";
      author = "Shea Levy";
      homepage = "https://github.com/TaktInc/hail";
      url = "";
      synopsis = "A service for pull-based continuous deployment based on hydra.";
      description = "Point hail to a hydra job, set up your nix-daemon to pull\nfrom your hydra's cache, and hail will automatically pull\nthe latest results from the job and activate them.\nSee the README for more details.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hail" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-client)
            (hsPkgs.lens)
            (hsPkgs.lens-aeson)
            (hsPkgs.netrc)
            (hsPkgs.network-uri)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.text)
            (hsPkgs.wreq)
          ];
        };
      };
    };
  }