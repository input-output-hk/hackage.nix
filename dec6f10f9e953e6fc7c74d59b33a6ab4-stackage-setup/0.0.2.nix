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
        name = "stackage-setup";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "2015 FP Complete Corporation";
      maintainer = "danburton@fpcomplete.com";
      author = "Dan Burton";
      homepage = "https://www.stackage.org/package/stackage-setup";
      url = "";
      synopsis = "An executable for downloading a Haskell setup";
      description = "An executable for downloading a Haskell setup";
      buildType = "Simple";
    };
    components = {
      "stackage-setup" = {
        depends  = [ (hsPkgs.base) ];
      };
      exes = {
        "stackage-setup" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.stackage-cli)
            (hsPkgs.optparse-applicative)
            (hsPkgs.http-conduit)
            (hsPkgs.http-client-tls)
            (hsPkgs.classy-prelude-conduit)
            (hsPkgs.unordered-containers)
            (hsPkgs.cryptohash)
            (hsPkgs.cryptohash-conduit)
            (hsPkgs.http-types)
            (hsPkgs.process)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }