{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mighttpd2";
        version = "2.3.3";
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
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.network)
            (hsPkgs.unix)
            (hsPkgs.bytestring)
            (hsPkgs.unix-bytestring)
            (hsPkgs.warp)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.wai-app-file-cgi)
            (hsPkgs.wai)
            (hsPkgs.transformers)
            (hsPkgs.http-types)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-date)
            (hsPkgs.hashmap)
            (hsPkgs.deepseq)
            (hsPkgs.wai-logger)
          ];
        };
        "mkindex" = {
          depends  = [ (hsPkgs.base) ];
        };
      };
    };
  }