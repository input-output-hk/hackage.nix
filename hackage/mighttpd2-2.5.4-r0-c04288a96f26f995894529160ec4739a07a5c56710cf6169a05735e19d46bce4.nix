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
      specVersion = "1.8";
      identifier = {
        name = "mighttpd2";
        version = "2.5.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/mighttpd/";
      url = "";
      synopsis = "A classical web server on WAI/warp";
      description = "A classical web server on WAI/warp.\nStatic files and CGI can be handled.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mighty" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashmap)
            (hsPkgs.http-conduit)
            (hsPkgs.http-date)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unix-bytestring)
            (hsPkgs.wai)
            (hsPkgs.wai-app-file-cgi)
            (hsPkgs.wai-logger)
            (hsPkgs.wai-logger-prefork)
            (hsPkgs.warp)
          ];
        };
        "mkindex" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.old-locale)
            (hsPkgs.directory)
            (hsPkgs.time)
          ];
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashmap)
            (hsPkgs.http-conduit)
            (hsPkgs.http-date)
            (hsPkgs.http-types)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.unix)
            (hsPkgs.unix-bytestring)
            (hsPkgs.wai)
            (hsPkgs.wai-app-file-cgi)
            (hsPkgs.wai-logger)
            (hsPkgs.wai-logger-prefork)
            (hsPkgs.warp)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th-prime)
          ];
        };
      };
    };
  }