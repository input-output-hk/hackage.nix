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
        name = "regex-tdfa-text";
        version = "1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Chris Kuklewicz 2007-2009, shelarcy 2012";
      homepage = "";
      url = "";
      synopsis = "Text interface for regex-tdfa";
      description = "This provides text interface for regex-tdfa.\n\nThis should be part of regex-tdfa package. But my patches are not accepted yet.\nSo, I made separate package. If you are interested in my patches, see\n<http://hub.darcs.net/shelarcy/regex-base> and <http://hub.darcs.net/shelarcy/regex-tdfa>.";
      buildType = "Simple";
    };
    components = {
      "regex-tdfa-text" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.text)
          (hsPkgs.regex-base)
          (hsPkgs.regex-tdfa)
        ];
      };
    };
  }