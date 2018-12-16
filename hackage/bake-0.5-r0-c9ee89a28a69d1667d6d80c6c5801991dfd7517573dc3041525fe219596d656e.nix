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
      specVersion = "1.18";
      identifier = {
        name = "bake";
        version = "0.5";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2014-2016";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/bake#readme";
      url = "";
      synopsis = "Continuous integration system";
      description = "Bake is a continuous integration server, designed for large, productive, semi-trusted teams.\n\n* /Large teams/ where there are at least several contributors working full-time on a single code base.\n\n* /Productive teams/ which are regularly pushing code, many times a day.\n\n* /Semi-trusted teams/ where code does not go through manual code review, but code does need to pass a test suite and perhaps some static analysis. People are assumed not to be malicious, but are fallible.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.cmdargs)
          (hsPkgs.shake)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.hashable)
          (hsPkgs.transformers)
          (hsPkgs.HTTP)
          (hsPkgs.safe)
          (hsPkgs.old-locale)
          (hsPkgs.http-conduit)
          (hsPkgs.http-client)
          (hsPkgs.http-types)
          (hsPkgs.wai-extra)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.aeson)
          (hsPkgs.sqlite-simple)
          (hsPkgs.direct-sqlite)
          (hsPkgs.disk-free-space)
          (hsPkgs.unordered-containers)
          (hsPkgs.smtp-mail)
          (hsPkgs.extra)
          (hsPkgs.wai)
          (hsPkgs.warp)
        ];
      };
      exes = {
        "bake-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.cmdargs)
            (hsPkgs.shake)
            (hsPkgs.directory)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.random)
            (hsPkgs.hashable)
            (hsPkgs.HTTP)
            (hsPkgs.safe)
            (hsPkgs.http-client)
            (hsPkgs.http-conduit)
            (hsPkgs.http-types)
            (hsPkgs.wai-extra)
            (hsPkgs.transformers)
            (hsPkgs.deepseq)
            (hsPkgs.aeson)
            (hsPkgs.smtp-mail)
            (hsPkgs.disk-free-space)
            (hsPkgs.unordered-containers)
            (hsPkgs.sqlite-simple)
            (hsPkgs.direct-sqlite)
            (hsPkgs.extra)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.process)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }