{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { testprog = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "shake"; version = "0.2.5"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2011-2012";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "http://community.haskell.org/~ndm/shake/";
      url = "";
      synopsis = "Build system library, like Make, but more accurate dependencies.";
      description = "Shake is a Haskell library for writing build systems - designed as a\nreplacement for make. To use Shake the user writes a Haskell program\nthat imports the Shake library, defines some build rules, and calls\nshake. Thanks to do notation and infix operators, a simple Shake program\nis not too dissimilar from a simple Makefile. However, as build systems\nget more complex, Shake is able to take advantage of the excellent\nabstraction facilities offered by Haskell and easily support much larger\nprojects.\n\nThe Shake library provides all the standard features available in other\nbuild systems, including automatic parallelism and minimal rebuilds.\nShake provides highly accurate dependency tracking, including seamless\nsupport for generated files, and dependencies on system information\n(i.e. compiler version). Shake can produce profile reports, indicating\nwhich files and take longest to build, and providing an analysis of the\nparallelism.\n\nThe theory behind an old version of Shake is described in a video at\n<http://vimeo.com/15465133>, and an example is given at the top of\n\"Development.Shake\". Further examples are included in the Cabal tarball,\nunder the @Examples@ directory.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          ];
        buildable = true;
        };
      exes = {
        "shake" = {
          depends = [
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            ];
          buildable = if flags.testprog then true else false;
          };
        };
      };
    }