{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "progressive"; version = "0.1.0.1"; };
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
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            ];
          buildable = true;
          };
        };
      };
    }