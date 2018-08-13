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
        name = "lxd-client-config";
        version = "0.1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "2017 Henri Verroken";
      maintainer = "henriverroken@gmail.com";
      author = "Henri Verroken";
      homepage = "https://github.com/hverr/haskell-lxd-client-config#readme";
      url = "";
      synopsis = "Read the configuration file of the standard LXD client.";
      description = "This package can read the configuration file of the standard LXD client.\n\nIt can for example extract information about the configured LXD remotes on\nyour system.";
      buildType = "Simple";
    };
    components = {
      "lxd-client-config" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.text)
          (hsPkgs.yaml)
        ];
      };
      tests = {
        "lxd-client-config-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lxd-client-config)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.containers)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }