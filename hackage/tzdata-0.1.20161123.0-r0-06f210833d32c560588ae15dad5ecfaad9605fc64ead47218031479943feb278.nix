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
        name = "tzdata";
        version = "0.1.20161123.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Mihaly Barasz <klao@nilcons.com>, Gergely Risko <errge@nilcons.com>";
      author = "Mihaly Barasz, Gergely Risko";
      homepage = "https://github.com/nilcons/haskell-tzdata";
      url = "";
      synopsis = "Time zone database (as files and as a module)";
      description = "The goal of this package is to distribute the standard Time Zone\nDatabase in a cabal package, so that it can be used in Haskell\nprograms uniformly on all platforms.\n\nThis package currently ships the @2016j@ version of the time zone\ndatabase.  The version of the time zone database shipped is always\nreflected in the version of this package: @x.y.YYYYMMDD.z@, then\n@YYYYMMDD@ is the official release date of time zone database.\n\nSee: <http://www.iana.org/time-zones> for more info about the time\nzone database.\n\nSee also the @tz@ package <http://hackage.haskell.org/package/tz> or\nthe @timezone-olson@ and @timezone-series@ packages that provide\nfacilities to /use/ the data shipped here. (The @tz@ package\nautomatically installs this package.)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.vector)
        ];
      };
      tests = {
        "test-db" = {
          depends  = [
            (hsPkgs.tzdata)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            (hsPkgs.unix)
          ];
        };
      };
    };
  }