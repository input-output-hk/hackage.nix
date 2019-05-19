{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "EtaMOO"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2014 Rob Leslie";
      maintainer = "Rob Leslie <rob@mars.org>";
      author = "Rob Leslie <rob@mars.org>";
      homepage = "https://github.com/verement/etamoo";
      url = "";
      synopsis = "A new implementation of the LambdaMOO server";
      description = "LambdaMOO is a network-accessible, multi-user, programmable, interactive\nsystem well-suited to the construction of text-based adventure games,\nconferencing systems, and other collaborative software.\n\nEtaMOO is an experimental multithreaded implementation of LambdaMOO in\nHaskell with anticipated ready support for 64-bit MOO integers and Unicode\nMOO strings. The implementation follows the specifications of the LambdaMOO\nProgrammer's Manual, and should be compatible with most LambdaMOO databases\nas of about version 1.8.3 of the LambdaMOO server code.\n\n/N.B./ This is (currently) incomplete software. It is not yet usable,\nalthough with further development it is hoped that it soon will be.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "etamoo" = {
          depends = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.haskeline)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.parsec)
            (hsPkgs.random)
            (hsPkgs.stm)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            (hsPkgs.pureMD5)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            ];
          libs = [
            (pkgs."pcre")
            ] ++ (pkgs.lib).optional (!system.isOsx) (pkgs."crypt");
          build-tools = [
            (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs))
            ];
          };
        };
      };
    }