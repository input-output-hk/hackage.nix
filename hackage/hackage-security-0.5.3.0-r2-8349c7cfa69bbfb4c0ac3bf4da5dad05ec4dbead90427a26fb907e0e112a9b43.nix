{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      base48 = true;
      use-network-uri = true;
      old-directory = false;
    };
    package = {
      specVersion = "1.12";
      identifier = {
        name = "hackage-security";
        version = "0.5.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015-2016 Well-Typed LLP";
      maintainer = "cabal-devel@haskell.org";
      author = "Edsko de Vries";
      homepage = "https://github.com/haskell/hackage-security";
      url = "";
      synopsis = "Hackage security library";
      description = "The hackage security library provides both server and\nclient utilities for securing the Hackage package server\n(<http://hackage.haskell.org/>).  It is based on The Update\nFramework (<http://theupdateframework.com/>), a set of\nrecommendations developed by security researchers at\nvarious universities in the US as well as developers on the\nTor project (<https://www.torproject.org/>).\n\nThe current implementation supports only index signing,\nthereby enabling untrusted mirrors. It does not yet provide\nfacilities for author package signing.\n\nThe library has two main entry points:\n\"Hackage.Security.Client\" is the main entry point for\nclients (the typical example being @cabal@), and\n\"Hackage.Security.Server\" is the main entry point for\nservers (the typical example being @hackage-server@).";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = (([
          (hsPkgs.base)
          (hsPkgs.base16-bytestring)
          (hsPkgs.base64-bytestring)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.containers)
          (hsPkgs.ed25519)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
          (hsPkgs.cryptohash-sha256)
          (hsPkgs.tar)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.zlib)
          (hsPkgs.template-haskell)
          (hsPkgs.ghc-prim)
        ] ++ (if flags.old-directory
          then [
            (hsPkgs.directory)
            (hsPkgs.old-time)
          ]
          else [
            (hsPkgs.directory)
          ])) ++ (if flags.base48
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.old-locale)
          ])) ++ (if flags.use-network-uri
          then [
            (hsPkgs.network-uri)
            (hsPkgs.network)
          ]
          else [ (hsPkgs.network) ]);
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs)
        ];
      };
      tests = {
        "TestSuite" = {
          depends  = [
            (hsPkgs.hackage-security)
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.network-uri)
            (hsPkgs.tar)
            (hsPkgs.time)
            (hsPkgs.zlib)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.QuickCheck)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }