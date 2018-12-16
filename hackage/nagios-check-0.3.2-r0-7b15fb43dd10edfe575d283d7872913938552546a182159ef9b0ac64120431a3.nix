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
        name = "nagios-check";
        version = "0.3.2";
      };
      license = "MIT";
      copyright = "2014-2015 Sharif Olorin";
      maintainer = "sio@tesser.org";
      author = "Sharif Olorin";
      homepage = "https://github.com/olorin/haskell-nagios-check";
      url = "";
      synopsis = "Package for writing monitoring plugins";
      description = "Implements Nagios plugin development guidelines\nwithin a Haskell framework for writing Nagios\nchecks.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.bifunctors)
          (hsPkgs.exceptions)
        ];
      };
      tests = {
        "nagios-check-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
            (hsPkgs.nagios-check)
          ];
        };
      };
    };
  }