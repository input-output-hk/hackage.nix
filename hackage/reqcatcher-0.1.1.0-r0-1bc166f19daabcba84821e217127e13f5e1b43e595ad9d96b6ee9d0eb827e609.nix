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
        name = "reqcatcher";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hiratara@cpan.org";
      author = "Masahiro Honma";
      homepage = "http://github.com/hiratara/hs-reqcatcher";
      url = "";
      synopsis = "A local http server to catch the HTTP redirect";
      description = "Manage an http server in your local PC to catch the HTTP\nredirect request from the browser. Especially, you can\ncatch the redirect from oauth providor and will get\noauth_verifier.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.warp)
        ];
      };
      tests = {
        "reqcatcher-test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.http-client)
            (hsPkgs.http-types)
            (hsPkgs.lens)
            (hsPkgs.reqcatcher)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.wai)
            (hsPkgs.wreq)
          ];
        };
      };
    };
  }