{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { example = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yesod-job-queue";
        version = "0.3.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Daishi Nakajima";
      maintainer = "nakaji.dayo@gmail.com";
      author = "Daishi Nakajima";
      homepage = "https://github.com/nakaji-dayo/yesod-job-queue#readme";
      url = "";
      synopsis = "Background jobs library for Yesod.";
      description = "Background jobs library for Yesod\n\n* It contains management API and web interface.\n* Queue backend is Redis.\n* Support cron scheduler\n\nUsage and screen shot are available in README.md";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.api-field-json-th)
          (hsPkgs.bytestring)
          (hsPkgs.cron)
          (hsPkgs.file-embed)
          (hsPkgs.hedis)
          (hsPkgs.lens)
          (hsPkgs.monad-control)
          (hsPkgs.monad-logger)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.uuid)
          (hsPkgs.yesod)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-persistent)
        ];
      };
      exes = {
        "yesod-job-queue-example" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod)
            (hsPkgs.yesod-core)
            (hsPkgs.yesod-job-queue)
            (hsPkgs.persistent-sqlite)
            (hsPkgs.resourcet)
            (hsPkgs.monad-logger)
            (hsPkgs.classy-prelude-yesod)
            (hsPkgs.hedis)
          ];
        };
      };
      tests = {
        "yesod-job-queue-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.yesod-job-queue)
          ];
        };
      };
    };
  }