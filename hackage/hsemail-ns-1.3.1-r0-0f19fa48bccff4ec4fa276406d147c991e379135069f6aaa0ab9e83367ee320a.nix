{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "hsemail-ns";
        version = "1.3.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jfredett@gmail.com";
      author = "Peter Simons <simons@cryp.to>, Joe Fredette <jfredett@gmail.com>";
      homepage = "http://patch-tag.com/r/hsemail-ns/home";
      url = "";
      synopsis = "Internet Message Parsers";
      description = "Nonstandard parsers for the syntax defined in RFC2822, forked from hsemail proper. Should not be used for parsing incoming emails, only emails stored on disk.";
      buildType = "Simple";
    };
    components = {
      "hsemail-ns" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.old-time)
        ];
      };
    };
  }