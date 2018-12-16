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
        name = "yesod-auth-basic";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2015, Christopher Reichert";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "";
      url = "";
      synopsis = "Yesod Middleware for HTTP Basic Authentication";
      description = "An efficient Yesod middleware middleware for HTTP Basic\nAuthentication.\n\nUtilizes Yesod request-local caching mechanisms to store valid auth\ncredentials found in the Authorization header.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.exceptions)
          (hsPkgs.text)
          (hsPkgs.yesod)
          (hsPkgs.wai)
          (hsPkgs.word8)
        ];
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod)
            (hsPkgs.yesod-auth-basic)
            (hsPkgs.yesod-test)
            (hsPkgs.hspec)
            (hsPkgs.text)
          ];
        };
        "hlint" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }