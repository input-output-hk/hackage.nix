{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "port-utils"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Jonathan Fischoff";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/port-utils#readme";
      url = "";
      synopsis = "Utilities for creating and waiting on ports";
      description = "Utilities for creating and waiting on ports. . @openFreePort@ will create a socket bound to a random port (like @warp@'s @openFreePort@). . @wait@ will attempt to connect to given host and port repeatedly until successful. .";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.network) ]; };
      tests = {
        "unit-test" = {
          depends = [
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.network)
            (hsPkgs.port-utils)
            (hsPkgs.stm)
            (hsPkgs.transformers)
            ];
          };
        };
      };
    }