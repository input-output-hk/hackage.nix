{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { static = false; };
    package = {
      specVersion = "1.12";
      identifier = { name = "dprox"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Bin Jin";
      maintainer = "bjin@ctrl-d.org";
      author = "Bin Jin";
      homepage = "https://github.com/bjin/dprox#readme";
      url = "";
      synopsis = "a lightweight DNS proxy server";
      description = "Please see the README on GitHub at <https://github.com/bjin/dprox#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "dprox" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dns)
            (hsPkgs.iproute)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.streaming-commons)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "dprox-test" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.dns)
            (hsPkgs.hspec)
            (hsPkgs.iproute)
            (hsPkgs.network)
            (hsPkgs.optparse-applicative)
            (hsPkgs.streaming-commons)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }