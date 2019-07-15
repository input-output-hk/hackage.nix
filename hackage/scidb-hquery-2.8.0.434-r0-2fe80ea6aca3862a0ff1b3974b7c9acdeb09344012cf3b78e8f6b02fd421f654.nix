{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "scidb-hquery"; version = "2.8.0.434"; };
      license = "GPL-3.0-only";
      copyright = "All rights reserved 2014-19(c).";
      maintainer = "marcus@gabriel.name";
      author = "Marcus D. Gabriel";
      homepage = "https://github.com/mdgabriel/scidb-hquery.git";
      url = "";
      synopsis = "Haskell query for SciDB via shim";
      description = "The command hquery with no operands and no options will begin an\ninteracitve session with a SciDB server using SciDB's shim\nprotocol at host localhost and port 8080.  See the [homepage](https://github.com/mdgabriel/scidb-hquery.git),\n\"hquery -m\", and [www.paradigm4.com](http://www.paradigm4.com) for more infomation.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal))
        (hsPkgs.buildPackages.filepath or (pkgs.buildPackages.filepath))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.HTTP)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.connection)
          (hsPkgs.cryptonite)
          (hsPkgs.data-default-class)
          (hsPkgs.exceptions)
          (hsPkgs.haskeline)
          (hsPkgs.hostname-validate)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-conduit)
          (hsPkgs.http-types)
          (hsPkgs.memory)
          (hsPkgs.mtl)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.regex)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.terminal-size)
          (hsPkgs.text)
          (hsPkgs.tls)
          (hsPkgs.x509-store)
          ];
        build-tools = [
          (hsPkgs.buildPackages.BNFC or (pkgs.buildPackages.BNFC))
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy))
          ];
        };
      exes = {
        "hquery" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HTTP)
            (hsPkgs.array)
            (hsPkgs.bytestring)
            (hsPkgs.connection)
            (hsPkgs.cryptonite)
            (hsPkgs.data-default-class)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.hostname-validate)
            (hsPkgs.http-client)
            (hsPkgs.http-client-tls)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.memory)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.regex)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.terminal-size)
            (hsPkgs.text)
            (hsPkgs.tls)
            (hsPkgs.x509-store)
            ];
          };
        };
      };
    }