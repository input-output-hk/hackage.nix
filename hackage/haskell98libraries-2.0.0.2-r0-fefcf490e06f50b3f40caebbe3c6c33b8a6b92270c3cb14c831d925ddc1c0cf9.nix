{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      utctime-in-directory = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "haskell98libraries";
        version = "2.0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "hallgren@chalmers.se";
      author = "";
      homepage = "http://www.haskell.org/definition/";
      url = "";
      synopsis = "Compatibility with Haskell 98";
      description = "This package provides compatibility with the library modules of Haskell\n98 and the FFI addendum, by means of wrappers around modules from\nthe base package (which in many cases have additional features).\nHowever \"Prelude\", \"Numeric\" and \"Foreign\" are provided directly by\nthe base package.";
      buildType = "Simple";
    };
    components = {
      "haskell98libraries" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.process)
          (hsPkgs.array)
          (hsPkgs.time)
        ] ++ [ (hsPkgs.directory) ];
      };
    };
  }