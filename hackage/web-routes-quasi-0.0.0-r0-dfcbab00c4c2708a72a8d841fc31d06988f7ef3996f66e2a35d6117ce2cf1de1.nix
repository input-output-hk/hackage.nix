{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "web-routes-quasi";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://docs.yesodweb.com/web-routes-quasi/";
      url = "";
      synopsis = "Define data types and parse/build functions for web-routes via a quasi-quoted DSL";
      description = "";
      buildType = "Simple";
    };
    components = {
      "web-routes-quasi" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.web-routes)
          (hsPkgs.template-haskell)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.QuickCheck)
            (hsPkgs.web-encodings)
            (hsPkgs.bytestring)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
          ];
        };
      };
    };
  }