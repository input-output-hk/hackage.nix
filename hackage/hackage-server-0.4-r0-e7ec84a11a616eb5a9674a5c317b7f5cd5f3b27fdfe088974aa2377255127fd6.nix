{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      minimal = false;
      debug = false;
      build-hackage-server = true;
      build-hackage-mirror = true;
      build-hackage-build = true;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hackage-server";
        version = "0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2008-2013 Duncan Coutts,\n2012-2013 Edsko de Vries,\n2010-2011 Matthew Gruen,\n2009-2010 Antoine Latter,\n2008 David Himmelstrup,\n2007 Ross Paterson";
      maintainer = "Duncan Coutts <duncan@community.haskell.org>,\nMatthew Gruen <wikigracenotes@gmail.com>";
      author = "Duncan Coutts <duncan@community.haskell.org>,\nDavid Himmelstrup <lemmih@gmail.com>,\nRoss Paterson <ross@soi.city.ac.uk>,\nMatthew Gruen <wikigracenotes@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "The Hackage web server";
      description = "The new implementation of the Hackage web server, based on the\nHappstack architecture. This is the implementation used to power\nhttp://hackage.haskell.org/\n\nIt is designed to be easy to run your own instance.\nIt also includes a doc builder client and a mirroring client.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hackage-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.random)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.base64-bytestring)
            (hsPkgs.base16-bytestring)
            (hsPkgs.bytestring)
            (hsPkgs.blaze-builder)
            (hsPkgs.text)
            (hsPkgs.split)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.deepseq)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.zlib)
            (hsPkgs.tar)
            (hsPkgs.async)
            (hsPkgs.binary)
            (hsPkgs.cereal)
            (hsPkgs.safecopy)
            (hsPkgs.crypto-api)
            (hsPkgs.pureMD5)
            (hsPkgs.xhtml)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.rss)
            (hsPkgs.Cabal)
            (hsPkgs.csv)
            (hsPkgs.stm)
            (hsPkgs.acid-state)
            (hsPkgs.happstack-server)
            (hsPkgs.hslogger)
            (hsPkgs.mime-mail)
            (hsPkgs.HStringTemplate)
            (hsPkgs.lifted-base)
          ] ++ pkgs.lib.optionals (!flags.minimal) [
            (hsPkgs.snowball)
            (hsPkgs.tokenize)
          ];
          libs = pkgs.lib.optional (!system.isOsx) (pkgs."crypt");
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
        "hackage-mirror" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.random)
            (hsPkgs.tar)
            (hsPkgs.zlib)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.safecopy)
            (hsPkgs.cereal)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            (hsPkgs.unix)
          ];
        };
        "hackage-build" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.tar)
            (hsPkgs.zlib)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.safecopy)
            (hsPkgs.cereal)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            (hsPkgs.aeson)
            (hsPkgs.random)
            (hsPkgs.unix)
            (hsPkgs.hscolour)
          ];
        };
        "hackage-import" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.vector)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.pretty)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.random)
            (hsPkgs.tar)
            (hsPkgs.zlib)
            (hsPkgs.network)
            (hsPkgs.HTTP)
            (hsPkgs.Cabal)
            (hsPkgs.safecopy)
            (hsPkgs.cereal)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            (hsPkgs.csv)
            (hsPkgs.async)
            (hsPkgs.attoparsec)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
          ];
        };
      };
      tests = {
        "HighLevelTest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.base64-bytestring)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HTTP)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.tar)
            (hsPkgs.unix)
            (hsPkgs.zlib)
          ];
        };
      };
    };
  }