{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "hsakamai"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Junji Hashimoto";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "https://github.com/junjihashimoto/hsakamai#readme";
      url = "";
      synopsis = "Akamai API(Edgegrid and Netstorage)";
      description = "Please see the README on GitHub at <https://github.com/githubuser/hsakamai#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.cryptonite)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.unix-time)
          (hsPkgs.uuid)
          (hsPkgs.xml-conduit)
          ];
        };
      exes = {
        "purge" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.cryptonite)
            (hsPkgs.hsakamai)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.memory)
            (hsPkgs.optparse-applicative)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.unix-time)
            (hsPkgs.uuid)
            (hsPkgs.xml-conduit)
            (hsPkgs.yaml)
            ];
          };
        };
      tests = {
        "doctest" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.case-insensitive)
            (hsPkgs.conduit)
            (hsPkgs.cryptonite)
            (hsPkgs.doctest)
            (hsPkgs.hsakamai)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.memory)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.unix-time)
            (hsPkgs.uuid)
            (hsPkgs.xml-conduit)
            ];
          };
        };
      };
    }