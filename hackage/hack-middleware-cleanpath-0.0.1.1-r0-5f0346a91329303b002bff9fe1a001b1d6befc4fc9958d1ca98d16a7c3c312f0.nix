{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "hack-middleware-cleanpath";
        version = "0.0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/hack-middleware-cleanpath/tree/master";
      url = "";
      synopsis = "Applies some basic redirect rules to get cleaner paths. (deprecated)";
      description = "Forces request to have a trailing slash (unless there is a\nfile extension) and ensures there are no doubled slashes.\nTakes the idea from Django.";
      buildType = "Simple";
    };
    components = {
      "hack-middleware-cleanpath" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.split)
          (hsPkgs.web-encodings)
          (hsPkgs.bytestring)
          (hsPkgs.hack)
        ];
      };
    };
  }