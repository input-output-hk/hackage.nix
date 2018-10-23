{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "clock";
        version = "0.4.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © Cetin Sert 2009-2013, Eugene Kirpichov 2010, Finn Espen Gundersen 2013, Gerolf Seitz 2013, Mathieu Boespflug 2014, Dimitri Sabadie 2015";
      maintainer = "Cetin Sert <cetin@corsis.eu>, Corsis Research";
      author = "Cetin Sert <cetin@corsis.eu>, Corsis Research";
      homepage = "http://corsis.github.com/clock/";
      url = "";
      synopsis = "High-resolution clock functions: monotonic, realtime, cputime.";
      description = "A package for convenient access to high-resolution clock and\ntimer functions of different operating systems via a unified API.\n\nPOSIX code and surface API was developed by Cetin Sert in 2009.\n\nWindows code was contributed by Eugene Kirpichov in 2010.\n\nFreeBSD code was contributed by Finn Espen Gundersen on 2013-10-14.\n\nOS X code was contributed by Gerolf Seitz on 2013-10-15.\n\nDerived @Generic@, @Typeable@ and other instances for @Clock@ and @TimeSpec@ was contributed by Mathieu Boespflug on 2014-09-17.\n\nCorrected dependency listing for @GHC < 7.6@ was contributed by Brian McKenna on 2014-09-30.\n\nWindows code corrected by Dimitri Sabadie on 2015-02-09.\n\n[Version Scheme]\nMajor-@/R/@-ewrite . New-@/F/@-unctionality . @/I/@-mprovementAndBugFixes . @/P/@-ackagingOnly\n\n* @PackagingOnly@ changes are made for quality assurance reasons.";
      buildType = "Simple";
    };
    components = {
      "clock" = {
        depends  = [
          (hsPkgs.base)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "7.6") [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
        ];
      };
    };
  }