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
        name = "wai-app-file-cgi";
        version = "0.6.0";
      };
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
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.attoparsec-conduit)
          (hsPkgs.blaze-builder)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.conduit)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.http-conduit)
          (hsPkgs.http-date)
          (hsPkgs.http-types)
          (hsPkgs.io-choice)
          (hsPkgs.lifted-base)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.static-hash)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          (hsPkgs.wai)
          (hsPkgs.blaze-html)
          (hsPkgs.wai-app-static)
          (hsPkgs.wai-logger)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.lifted-base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework-doctest)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th-prime)
          ];
        };
      };
    };
  }