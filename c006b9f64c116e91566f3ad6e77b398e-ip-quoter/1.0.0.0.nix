{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "ip-quoter";
        version = "1.0.0.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Shea Levy";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/shlevy/ip-quoter";
      url = "";
      synopsis = "Quasiquoter for IP addresses";
      description = "WARNING: Version 1.0.0.0 is completely broken! Don't use!\nA quasiquoter for IP address literals – That is, IPv4 decimal-dotted or IPv6\ncolon-separated notation.\nCurrently only IPv4 addresses are implemented.";
      buildType = "Simple";
    };
    components = {
      "ip-quoter" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.split)
          (hsPkgs.network)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.network)
            (hsPkgs.ip-quoter)
          ];
        };
      };
    };
  }