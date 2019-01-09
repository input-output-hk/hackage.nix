{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { llvm = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "clock"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright © Cetin Sert 2009-2012, Eugene Kirpichov 2010";
      maintainer = "Cetin Sert <cetin@corsis.eu>, Corsis Research";
      author = "Cetin Sert <cetin@corsis.eu>, Corsis Research; Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "http://corsis.github.com/clock/";
      url = "";
      synopsis = "High-resolution clock functions: monotonic, realtime, cputime.";
      description = "A package for convenient access to high-resolution clock and\ntimer functions of different operating systems.\n\nPOSIX layer was developed by Cetin Sert in 2009.\n\nWindows layer was contributed by Eugene Kirpichov in 2010.\n\nBoth layers share the same surface API.\n\n[Version Scheme]\nMajor-@/R/@-ewrite . New-@/F/@-unctionality . @/I/@-mprovementAndBugFixes . @/P/@-ackagingOnly\n\n* @PackagingOnly@ changes are made for quality assurance reasons.";
      buildType = "Simple";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }