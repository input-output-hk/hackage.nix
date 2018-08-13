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
      specVersion = "1.6";
      identifier = {
        name = "haskell98";
        version = "2.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "libraries@haskell.org";
      author = "";
      homepage = "http://www.haskell.org/definition/";
      url = "";
      synopsis = "Compatibility with Haskell 98";
      description = "This package provides compatibility with the modules of Haskell\n98 and the FFI addendum, by means of wrappers around modules from\nthe base package (which in many cases have additional features).\nHowever Prelude, Numeric and Foreign are provided directly by\nthe base package.";
      buildType = "Simple";
    };
    components = {
      "haskell98" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.old-time)
          (hsPkgs.old-locale)
          (hsPkgs.process)
          (hsPkgs.array)
          (hsPkgs.time)
        ];
      };
    };
  }