{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      minimal = false;
      debug = false;
      build-hackage-server = true;
      build-hackage-mirror = true;
      build-hackage-build = true;
      build-hackage-import = false;
      test-create-user = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hackage-server";
          version = "0.5.0";
        };
        license = "BSD-3-Clause";
        copyright = "2008-2014 Duncan Coutts,\n2012-2013 Edsko de Vries,\n2013 Google Inc.,\n2010-2011 Matthew Gruen,\n2009-2010 Antoine Latter,\n2008 David Himmelstrup,\n2007 Ross Paterson";
        maintainer = "Duncan Coutts <duncan@community.haskell.org>,\nMatthew Gruen <wikigracenotes@gmail.com>";
        author = "Duncan Coutts <duncan@community.haskell.org>,\nDavid Himmelstrup <lemmih@gmail.com>,\nRoss Paterson <ross@soi.city.ac.uk>,\nMatthew Gruen <wikigracenotes@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "The Hackage web server";
        description = "The new implementation of the Hackage web server, based on the\nHappstack architecture. This is the implementation used to power\n<http://hackage.haskell.org/>\n\nIt is designed to be easy to run your own instance.\nIt also includes a doc builder client and a mirroring client.";
        buildType = "Simple";
      };
      components = {
        exes = {
          hackage-server = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.random
              hsPkgs.array
              hsPkgs.vector
              hsPkgs.containers
              hsPkgs.pretty
              hsPkgs.base64-bytestring
              hsPkgs.base16-bytestring
              hsPkgs.bytestring
              hsPkgs.blaze-builder
              hsPkgs.text
              hsPkgs.split
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.deepseq
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.parsec
              hsPkgs.network
              hsPkgs.unix
              hsPkgs.zlib
              hsPkgs.tar
              hsPkgs.async
              hsPkgs.cereal
              hsPkgs.safecopy
              hsPkgs.crypto-api
              hsPkgs.pureMD5
              hsPkgs.xhtml
              hsPkgs.aeson
              hsPkgs.unordered-containers
              hsPkgs.rss
              hsPkgs.HaXml
              hsPkgs.Cabal
              hsPkgs.csv
              hsPkgs.stm
              hsPkgs.acid-state
              hsPkgs.happstack-server
              hsPkgs.hslogger
              hsPkgs.mime-mail
              hsPkgs.HStringTemplate
              hsPkgs.lifted-base
              hsPkgs.QuickCheck
            ] ++ pkgs.lib.optionals (!_flags.minimal) [
              hsPkgs.snowball
              hsPkgs.tokenize
            ];
            libs = pkgs.lib.optional (!system.isOsx) pkgs.crypt;
          };
          hackage-mirror = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.pretty
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.random
              hsPkgs.tar
              hsPkgs.zlib
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.Cabal
              hsPkgs.safecopy
              hsPkgs.cereal
              hsPkgs.binary
              hsPkgs.mtl
              hsPkgs.unix
              hsPkgs.aeson
            ];
          };
          hackage-build = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.pretty
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.tar
              hsPkgs.zlib
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.Cabal
              hsPkgs.safecopy
              hsPkgs.cereal
              hsPkgs.binary
              hsPkgs.mtl
              hsPkgs.aeson
              hsPkgs.random
              hsPkgs.unix
              hsPkgs.hscolour
            ];
          };
          hackage-import = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.array
              hsPkgs.vector
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.pretty
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.random
              hsPkgs.tar
              hsPkgs.zlib
              hsPkgs.network
              hsPkgs.HTTP
              hsPkgs.Cabal
              hsPkgs.safecopy
              hsPkgs.cereal
              hsPkgs.binary
              hsPkgs.mtl
              hsPkgs.csv
              hsPkgs.async
              hsPkgs.attoparsec
              hsPkgs.aeson
              hsPkgs.unordered-containers
            ];
          };
        };
        tests = {
          HighLevelTest = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HTTP
              hsPkgs.network
              hsPkgs.process
              hsPkgs.tar
              hsPkgs.unix
              hsPkgs.zlib
              hsPkgs.unordered-containers
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.xml
              hsPkgs.random
            ];
          };
          CreateUserTest = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.base64-bytestring
              hsPkgs.Cabal
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.HTTP
              hsPkgs.network
              hsPkgs.process
              hsPkgs.tar
              hsPkgs.unix
              hsPkgs.zlib
              hsPkgs.unordered-containers
              hsPkgs.aeson
              hsPkgs.text
              hsPkgs.vector
              hsPkgs.xml
              hsPkgs.random
            ];
          };
        };
      };
    }