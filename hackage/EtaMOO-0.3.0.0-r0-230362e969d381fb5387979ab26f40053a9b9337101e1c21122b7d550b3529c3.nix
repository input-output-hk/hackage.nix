{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; 64bit = false; outbound-network = false; };
    package = {
      specVersion = "1.22";
      identifier = { name = "EtaMOO"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2014–2016 Robert Leslie";
      maintainer = "Rob Leslie <rob@mars.org>";
      author = "Rob Leslie <rob@mars.org>";
      homepage = "http://verement.github.io/etamoo";
      url = "";
      synopsis = "A new implementation of the LambdaMOO server";
      description = "LambdaMOO is a network-accessible, multi-user, programmable, interactive\nsystem well-suited to the construction of text-based adventure games,\nconferencing systems, and other collaborative software.\n\nEtaMOO is an experimental multithreaded implementation of LambdaMOO in\nHaskell with LMDB-backed persistence and anticipated ready support for\nUnicode MOO strings and 64-bit MOO integers. The implementation follows the\nspecifications of the LambdaMOO Programmer's Manual, and should be\ncompatible with most LambdaMOO databases as of about version 1.8.3 of the\nLambdaMOO server code.\n\n/N.B./ This software is still under development and not fully complete.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "etamoo" = {
          depends = [
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."cryptonite" or ((hsPkgs.pkgs-errors).buildDepError "cryptonite"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."memory" or ((hsPkgs.pkgs-errors).buildDepError "memory"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."pipes" or ((hsPkgs.pkgs-errors).buildDepError "pipes"))
            (hsPkgs."pipes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "pipes-bytestring"))
            (hsPkgs."pipes-concurrency" or ((hsPkgs.pkgs-errors).buildDepError "pipes-concurrency"))
            (hsPkgs."pipes-network" or ((hsPkgs.pkgs-errors).buildDepError "pipes-network"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."stm-chans" or ((hsPkgs.pkgs-errors).buildDepError "stm-chans"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vcache" or ((hsPkgs.pkgs-errors).buildDepError "vcache"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            ];
          libs = (pkgs.lib).optional (!system.isOsx) (pkgs."crypt" or ((hsPkgs.pkgs-errors).sysDepError "crypt"));
          pkgconfig = [
            (pkgconfPkgs."libpcre" or ((hsPkgs.pkgs-errors).pkgConfDepError "libpcre"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
            ];
          buildable = true;
          };
        };
      };
    }