{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "http-download"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018-2019 FP Complete";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/stack#readme";
      url = "";
      synopsis = "Verified downloads with retries";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.cryptonite)
          (hsPkgs.cryptonite-conduit)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.http-client)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.path)
          (hsPkgs.path-io)
          (hsPkgs.retry)
          (hsPkgs.rio)
          (hsPkgs.rio-prettyprint)
          ];
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cryptonite)
            (hsPkgs.hspec)
            (hsPkgs.hspec-discover)
            (hsPkgs.http-client)
            (hsPkgs.http-download)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.retry)
            (hsPkgs.rio)
            (hsPkgs.rio-prettyprint)
            ];
          };
        };
      };
    }