{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      splitbase = false;
      buildtestserver = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "http-monad";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Henning Thielemann";
      maintainer = "Henning Thielemann <http@henning-thielemann.de>";
      author = "Henning Thielemann <http@henning-thielemann.de>";
      homepage = "";
      url = "";
      synopsis = "Monad abstraction for HTTP allowing lazy transfer and non-I/O simulation";
      description = "This library implements a monad class with various interesting instances:\n\n* Lazy I/O allows for fetching documents via HTTP on demand\n\n* Non-I/O allows for testing HTTP communication without any IO action\n\nBy using this monad you can implement HTTP communication in a very general way.\nYou may add further functionality by adding custom sub-classes.\n\nWe inherit all content data types from the HTTP-4000 package,\nsuch as String as well as strict and lazy ByteString.";
      buildType = "Simple";
    };
    components = {
      "http-monad" = {
        depends  = [
          (hsPkgs.HTTP)
          (hsPkgs.network)
          (hsPkgs.parsec)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.explicit-exception)
          (hsPkgs.utility-ht)
          (hsPkgs.lazyio)
        ] ++ (if _flags.splitbase
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.containers)
            (hsPkgs.base)
          ]);
      };
      exes = {
        "infinite-httpd" = {
          depends  = pkgs.lib.optional (_flags.buildtestserver) (hsPkgs.httpd-shed);
        };
      };
    };
  }