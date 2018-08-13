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
      specVersion = "1.2";
      identifier = {
        name = "hmm";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "mike@izbicki.me";
      author = "Mike Izbicki";
      homepage = "https://github.com/mikeizbicki/hmm";
      url = "";
      synopsis = "A hidden markov model library";
      description = "";
      buildType = "Simple";
    };
    components = { "hmm" = {}; };
  }