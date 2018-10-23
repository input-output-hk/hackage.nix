{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { maintainer = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "themoviedb";
        version = "1.1.0.0";
      };
      license = "MIT";
      copyright = "Copyright: (c) 2012-2015 Peter Jones";
      maintainer = "Peter Jones <pjones@devalot.com>";
      author = "Peter Jones <pjones@devalot.com>";
      homepage = "http://github.com/pjones/themoviedb";
      url = "";
      synopsis = "Haskell API bindings for http://themoviedb.org";
      description = "This library provides functions for retrieving metadata\nfrom the <http://TheMovieDB.org> API.  Documentation\ncan be found in the \"Network.API.TheMovieDB\" module.";
      buildType = "Simple";
    };
    components = {
      "themoviedb" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.either)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.text-binary)
          (hsPkgs.time)
          (hsPkgs.time-locale-compat)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "tmdb" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.themoviedb)
            (hsPkgs.time)
            (hsPkgs.time-locale-compat)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
            (hsPkgs.themoviedb)
            (hsPkgs.time)
          ];
        };
      };
    };
  }