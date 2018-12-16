{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hoovie";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "peter@vdbrand.nl";
      author = "Peter van den Brand";
      homepage = "https://bitbucket.org/pvdbrand/hoovie";
      url = "";
      synopsis = "Haskell Media Server";
      description = "Haskell Media Server";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hoovie" = {
          depends = [
            (hsPkgs.network-multicast)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.xml)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.snap-core)
            (hsPkgs.snap-server)
            (hsPkgs.enumerator)
            (hsPkgs.process)
            (hsPkgs.blaze-builder)
            (hsPkgs.network-info)
            (hsPkgs.file-embed)
            (hsPkgs.configurator)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.HDBC)
            (hsPkgs.HDBC-sqlite3)
            (hsPkgs.transformers)
            (hsPkgs.old-time)
            (hsPkgs.regex-compat)
          ];
        };
      };
    };
  }