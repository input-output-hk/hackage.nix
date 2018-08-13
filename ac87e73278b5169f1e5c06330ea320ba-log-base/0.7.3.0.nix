{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "log-base";
        version = "0.7.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "Scrive AB";
      maintainer = "Andrzej Rybczak <andrzej@rybczak.net>,\nJonathan Jouty <jonathan@scrive.com>,\nMikhail Glushenkov <mikhail@scrive.com>,\nOleg Grenrus <oleg.grenrus@iki.fi>";
      author = "Scrive AB";
      homepage = "https://github.com/scrive/log";
      url = "";
      synopsis = "Structured logging solution (base package)";
      description = "A library that provides a way to record structured log\nmessages. Use this package in conjunction with\n'log-elasticsearch' or 'log-postgres', depending\non which back end you need.";
      buildType = "Simple";
    };
    components = {
      "log-base" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.exceptions)
          (hsPkgs.mmorph)
          (hsPkgs.monad-control)
          (hsPkgs.monad-time)
          (hsPkgs.mtl)
          (hsPkgs.semigroups)
          (hsPkgs.stm)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers-base)
          (hsPkgs.unordered-containers)
        ];
      };
    };
  }