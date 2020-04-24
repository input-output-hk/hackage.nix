{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "jvm-streaming"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "2015-2016 EURL Tweag.";
      maintainer = "m@tweag.io";
      author = "Tweag I/O";
      homepage = "http://github.com/tweag/inline-java/tree/master/jvm-streaming#readme";
      url = "";
      synopsis = "Expose Java iterators as streams from the streaming package.";
      description = "Please see README.md.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."distributed-closure" or ((hsPkgs.pkgs-errors).buildDepError "distributed-closure"))
          (hsPkgs."jni" or ((hsPkgs.pkgs-errors).buildDepError "jni"))
          (hsPkgs."jvm" or ((hsPkgs.pkgs-errors).buildDepError "jvm"))
          (hsPkgs."inline-java" or ((hsPkgs.pkgs-errors).buildDepError "inline-java"))
          (hsPkgs."singletons" or ((hsPkgs.pkgs-errors).buildDepError "singletons"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            (hsPkgs."inline-java" or ((hsPkgs.pkgs-errors).buildDepError "inline-java"))
            (hsPkgs."jvm" or ((hsPkgs.pkgs-errors).buildDepError "jvm"))
            (hsPkgs."jvm-streaming" or ((hsPkgs.pkgs-errors).buildDepError "jvm-streaming"))
            (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
            ];
          buildable = true;
          };
        };
      };
    }