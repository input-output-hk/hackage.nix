{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "log"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrzej@scrive.com";
      author = "Scrive";
      homepage = "https://github.com/scrive/log";
      url = "";
      synopsis = "Structured logging solution with multiple backends";
      description = "A library that provides a way to record structured log messages with multiple backends.\n\nSupported backends:\n\n* standard output\n\n* PostgreSQL";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.monad-time)
          (hsPkgs.time)
          (hsPkgs.deepseq)
          (hsPkgs.transformers-base)
          (hsPkgs.exceptions)
          (hsPkgs.mtl)
          (hsPkgs.monad-control)
          (hsPkgs.unordered-containers)
          (hsPkgs.bytestring)
          (hsPkgs.split)
          (hsPkgs.hpqtypes)
          (hsPkgs.aeson-pretty)
          (hsPkgs.old-locale)
          ];
        };
      };
    }