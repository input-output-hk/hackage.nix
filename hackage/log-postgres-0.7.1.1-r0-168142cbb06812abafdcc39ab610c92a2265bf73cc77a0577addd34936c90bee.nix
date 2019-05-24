{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "log-postgres"; version = "0.7.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>,\nOleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/log";
      url = "";
      synopsis = "Structured logging solution (PostgreSQL back end)";
      description = "PostgreSQL back end for the 'log' library suite.\nDepends on 'log-base'.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.log-base)
          (hsPkgs.aeson)
          (hsPkgs.hpqtypes)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.aeson-pretty)
          (hsPkgs.base64-bytestring)
          (hsPkgs.hpqtypes)
          (hsPkgs.mtl)
          (hsPkgs.lifted-base)
          (hsPkgs.semigroups)
          (hsPkgs.text-show)
          (hsPkgs.http-client)
          (hsPkgs.log-base)
          (hsPkgs.split)
          ];
        };
      };
    }