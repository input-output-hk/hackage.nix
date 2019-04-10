{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "base32-z-bytestring"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013, Sam Truzjan, 2019 Oscoin Engineering Team";
      maintainer = "Sam Truzjan <pxqr.sta@gmail.com>";
      author = "Sam Truzjan, Oscoin Engineering Team";
      homepage = "https://github.com/oscoin/z-base32-bytestring";
      url = "";
      synopsis = "Fast z-base32 and z-base32hex codec for ByteStrings";
      description = "base32 and base32hex codec according to RFC4648\n<http://tools.ietf.org/html/rfc4648>, extended to support z-base32 encoding\naccording to <https://gist.github.com/maaku/8996338#file-bip-ecc32-mediawiki>\n\nThe package API is similar to base64-bytestring.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.cpu) ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.z-base32-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.hedgehog)
            (hsPkgs.tasty)
            (hsPkgs.tasty-fail-fast)
            (hsPkgs.tasty-hedgehog)
            (hsPkgs.tasty-hspec)
            ];
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.z-base32-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            ];
          };
        };
      };
    }