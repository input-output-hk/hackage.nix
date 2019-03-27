{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "curl-cookiejar"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Plow Technologies";
      maintainer = "edward.amsden@plowtech.net";
      author = "Edward Amsden";
      homepage = "https://github.com/plow-technologies/curl-cookiejar#readme";
      url = "";
      synopsis = "Parsing and pretty-printing of cURL/wget cookie jars";
      description = "See README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.http-client)
          (hsPkgs.time)
          ];
        };
      };
    }