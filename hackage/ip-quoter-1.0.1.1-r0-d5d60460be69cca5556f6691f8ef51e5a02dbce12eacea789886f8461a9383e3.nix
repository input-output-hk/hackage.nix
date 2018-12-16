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
        name = "ip-quoter";
        version = "1.0.1.1";
      };
      license = "MIT";
      copyright = "(c) 2015 Shea Levy";
      maintainer = "shea@shealevy.com";
      author = "Shea Levy";
      homepage = "https://github.com/shlevy/ip-quoter";
      url = "";
      synopsis = "Quasiquoter for IP addresses";
      description = "A quasiquoter for IP address literals – That is, IPv4 decimal-dotted or IPv6\ncolon-separated notation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.network)
          (hsPkgs.cpu)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.network)
            (hsPkgs.cpu)
            (hsPkgs.ip-quoter)
          ];
        };
      };
    };
  }