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
      specVersion = "1.10";
      identifier = {
        name = "odpic-raw";
        version = "0.1.11";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Daniel YU";
      maintainer = "leptonyu@gmail.com";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/odpic-raw#readme";
      url = "";
      synopsis = "Oracle Database Bindings";
      description = "A low-level client library for the Oracle database, implemented as\nbindings to the C ODPI API.";
      buildType = "Simple";
    };
    components = {
      "odpic-raw" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.resourcet)
          (hsPkgs.conduit)
          (hsPkgs.time)
          (hsPkgs.monad-control)
        ];
        libs = [ (pkgs."odpic") ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs)
        ];
      };
      tests = {
        "odpic-raw-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.odpic-raw)
            (hsPkgs.resourcet)
            (hsPkgs.conduit)
            (hsPkgs.monad-logger)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }