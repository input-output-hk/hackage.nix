{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hsemail";
        version = "1.7.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Peter Simons";
      maintainer = "Peter Simons <simons@cryp.to>";
      author = "Peter Simons <simons@cryp.to>, Gero Kriependorf <gero-dev@physra.net>, Marty Pauley <marty@kasei.com>";
      homepage = "http://gitorious.org/hsemail";
      url = "";
      synopsis = "Internet Message Parsers";
      description = "Parsers for the syntax defined in RFC2821 and 2822";
      buildType = "Simple";
    };
    components = {
      "hsemail" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.old-time)
        ];
      };
    };
  }