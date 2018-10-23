{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "stackage-metadata";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/commercialhaskell/all-cabal-metadata-tool";
      url = "";
      synopsis = "Grab current metadata for all packages";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "stackage-metadata" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.aeson)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.tar)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.pretty)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.zlib)
        ];
      };
      exes = {
        "all-cabal-metadata-tool" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.stackage-metadata)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.stackage-install)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.Cabal)
            (hsPkgs.yaml)
            (hsPkgs.text)
            (hsPkgs.containers)
            (hsPkgs.conduit)
            (hsPkgs.bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.cryptohash)
            (hsPkgs.transformers)
            (hsPkgs.resourcet)
            (hsPkgs.tar)
            (hsPkgs.stackage-update)
          ];
        };
      };
    };
  }