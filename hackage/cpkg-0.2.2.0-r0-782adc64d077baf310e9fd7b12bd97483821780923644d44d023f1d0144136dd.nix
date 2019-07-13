{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { development = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "cpkg"; version = "0.2.2.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2018-2019 Vanessa McHale";
      maintainer = "vanessa.mchale@iohk.io";
      author = "Vanessa McHale";
      homepage = "";
      url = "";
      synopsis = "Build tool for C";
      description = "A build tool and package manager configured using [Dhall](https://github.com/dhall-lang/dhall-haskell).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.dhall)
          (hsPkgs.text)
          (hsPkgs.temporary)
          (hsPkgs.bytestring)
          (hsPkgs.zlib)
          (hsPkgs.bzlib)
          (hsPkgs.lzma)
          (hsPkgs.tar)
          (hsPkgs.zip-archive)
          (hsPkgs.prettyprinter)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.hashable)
          (hsPkgs.binary)
          (hsPkgs.microlens)
          (hsPkgs.recursion)
          (hsPkgs.filemanip)
          (hsPkgs.network-uri)
          (hsPkgs.megaparsec)
          (hsPkgs.libarchive)
          (hsPkgs.dir-traverse)
          ];
        build-tools = [
          (hsPkgs.buildPackages.cpphs or (pkgs.buildPackages.cpphs))
          ];
        };
      exes = {
        "cpkg" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cpkg)
            (hsPkgs.optparse-applicative)
            (hsPkgs.directory)
            (hsPkgs.text)
            ];
          };
        };
      tests = {
        "cpkg-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cpkg)
            (hsPkgs.hspec)
            (hsPkgs.hspec-megaparsec)
            (hsPkgs.megaparsec)
            ];
          };
        };
      };
    }