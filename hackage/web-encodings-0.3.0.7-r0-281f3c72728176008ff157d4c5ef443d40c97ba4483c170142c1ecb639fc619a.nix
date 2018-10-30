{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { buildtests = false; };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "web-encodings";
        version = "0.3.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/web-encodings/tree/master";
      url = "";
      synopsis = "Encapsulate multiple web encoding in a single package.";
      description = "The idea is to minimize external dependencies so this is usable in just about any context.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
          (hsPkgs.old-locale)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.failure)
          (hsPkgs.directory)
        ];
      };
      exes = {
        "runtests" = {
          depends  = pkgs.lib.optionals (flags.buildtests) [
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.convertible-text)
          ];
        };
      };
    };
  }