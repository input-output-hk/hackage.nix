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
        name = "progressive";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Grzegorz Chrupała <g.chrupala@uvt.nl>";
      author = "Grzegorz Chrupała";
      homepage = "https://bitbucket.org/gchrupala/progression";
      url = "";
      synopsis = "Multilabel classification model which learns sequentially (online).";
      description = "Progressive is a multilabel classification model which learns\nsequentially (online). The set of labels need not be known in advance:\nthe learner keeps a constantly updated set of top N most frequent\nlabels seen so far and predicts labels from this set.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "progressive" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.binary)
            (hsPkgs.bytestring)
            (hsPkgs.process)
            (hsPkgs.ghc-prim)
          ];
        };
      };
    };
  }