{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      network-uri = false;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hxt-http";
        version = "9.1.5.2";
      };
      license = "MIT";
      copyright = "Copyright (c) 2011 Uwe Schmidt";
      maintainer = "Uwe Schmidt <uwe@fh-wedel.de>";
      author = "Uwe Schmidt";
      homepage = "https://github.com/UweSchmidt/hxt";
      url = "";
      synopsis = "Interface to native Haskell HTTP package HTTP";
      description = "Interface to native Haskell HTTP package HTTP.\nThis package can be used as alternative for the hxt-curl package\nfor accessing documents via HTTP.\n\nChanges from 9.1.3: Works with ghc-7.10\n\nChanges to 9.1.3: New warnings from ghc-7.4 removed";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.HTTP)
          (hsPkgs.hxt)
        ] ++ (if flags.network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else if compiler.isGhc && compiler.version.ge "7.10"
            then [
              (hsPkgs.network-uri)
              (hsPkgs.network)
            ]
            else [ (hsPkgs.network) ]);
      };
    };
  }