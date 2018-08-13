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
      specVersion = "1.2";
      identifier = {
        name = "libpq";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "grant@tnarg.com";
      author = "Grant Monroe";
      homepage = "http://github.com/tnarg/haskell-libpq";
      url = "";
      synopsis = "libpq binding for Haskell";
      description = "This binding uses the libpq asynchronous API in\ncombination with threadWaitRead and\nthreadWaitWrite to take advantage of the I/O\nmanager.";
      buildType = "Simple";
    };
    components = {
      "libpq" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.unix)
        ];
        libs = [ (pkgs."pq") ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
    };
  }