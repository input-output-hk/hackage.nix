{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      remote-configs = true;
      old-transformers = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "configuration-tools";
        version = "0.2.15";
      };
      license = "MIT";
      copyright = "(c) 2015-2016 Lars Kuhtz <lakuhtz@gmail.com>,\n(c) 2014-2015 AlephCloud, Inc.";
      maintainer = "Lars Kuhtz <lakuhtz@gmail.com>";
      author = "Lars Kuhtz <lakuhtz@gmail.com>";
      homepage = "https://github.com/alephcloud/hs-configuration-tools";
      url = "";
      synopsis = "Tools for specifying and parsing configurations";
      description = "Tools for specifying and parsing configurations\n\nThis package provides a collection of utils on top of the packages\n<http://hackage.haskell.org/package/optparse-applicative optparse-applicative>,\n<http://hackage.haskell.org/package/aeson aeson>, and\n<http://hackage.haskell.org/package/yaml yaml> for configuring libraries and\napplications in a convenient and composable way.\n\nThe main features are\n\n1. configuration management through integration of command line option\nparsing and configuration files and\n\n2. a @Setup.hs@ file that generates a @PkgInfo@ module for each component\nof a package that provides information about the package and the build.\n\nDocumentation on how to use this package can be found in the\n<https://github.com/alephcloud/hs-configuration-tools/blob/master/README.md README>\nand in the API documentation of the modules \"Configuration.Utils\" and\n\"Configuration.Utils.Setup\".";
      buildType = "Custom";
    };
    components = {
      "configuration-tools" = {
        depends  = ([
          (hsPkgs.Cabal)
          (hsPkgs.aeson)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.base-unicode-symbols)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.dlist)
          (hsPkgs.filepath)
          (hsPkgs.network-uri)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
          (hsPkgs.yaml)
          (hsPkgs.profunctors)
        ] ++ (if _flags.old-transformers
          then [
            (hsPkgs.mtl)
            (hsPkgs.mtl-compat)
            (hsPkgs.transformers)
            (hsPkgs.transformers-compat)
          ]
          else [
            (hsPkgs.mtl)
            (hsPkgs.transformers)
          ])) ++ pkgs.lib.optionals (_flags.remote-configs) [
          (hsPkgs.base64-bytestring)
          (hsPkgs.connection)
          (hsPkgs.data-default)
          (hsPkgs.enclosed-exceptions)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.monad-control)
          (hsPkgs.tls)
          (hsPkgs.x509)
          (hsPkgs.x509-system)
          (hsPkgs.x509-validation)
        ];
      };
      tests = {
        "url-example-test" = {
          depends  = ([
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.configuration-tools)
            (hsPkgs.text)
            (hsPkgs.unordered-containers)
            (hsPkgs.yaml)
          ] ++ (if _flags.old-transformers
            then [
              (hsPkgs.mtl)
              (hsPkgs.mtl-compat)
              (hsPkgs.transformers-compat)
            ]
            else [
              (hsPkgs.mtl)
              (hsPkgs.transformers)
            ])) ++ pkgs.lib.optionals (_flags.remote-configs) [
            (hsPkgs.enclosed-exceptions)
            (hsPkgs.http-types)
            (hsPkgs.monad-control)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.warp-tls)
          ];
        };
        "trivial" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-unicode-symbols)
            (hsPkgs.configuration-tools)
          ];
        };
      };
    };
  }