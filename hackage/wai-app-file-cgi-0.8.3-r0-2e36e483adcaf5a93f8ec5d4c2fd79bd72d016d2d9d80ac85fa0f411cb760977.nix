{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "wai-app-file-cgi"; version = "0.8.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Kazu Yamamoto <kazu@iij.ad.jp>";
      author = "Kazu Yamamoto <kazu@iij.ad.jp>";
      homepage = "http://www.mew.org/~kazu/proj/mighttpd/";
      url = "";
      synopsis = "File/CGI/Rev Proxy App of WAI";
      description = "This WAI application library handles static files,\nexecutes CGI scripts, and serves as a reverse proxy.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.blaze-builder)
          (hsPkgs.blaze-html)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.date-cache)
          (hsPkgs.directory)
          (hsPkgs.fast-logger)
          (hsPkgs.filepath)
          (hsPkgs.http-conduit)
          (hsPkgs.http-date)
          (hsPkgs.http-types)
          (hsPkgs.io-choice)
          (hsPkgs.lifted-base)
          (hsPkgs.mime-types)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.static-hash)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.wai)
          (hsPkgs.wai-logger)
          (hsPkgs.word8)
          ];
        };
      tests = {
        "doctest" = { depends = [ (hsPkgs.base) (hsPkgs.doctest) ]; };
        "spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hspec)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.unix)
            (hsPkgs.wai)
            (hsPkgs.wai-app-file-cgi)
            (hsPkgs.warp)
            ];
          };
        };
      };
    }