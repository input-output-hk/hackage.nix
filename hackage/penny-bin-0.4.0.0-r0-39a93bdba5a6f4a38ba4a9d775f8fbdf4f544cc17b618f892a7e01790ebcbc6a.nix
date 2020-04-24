{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "penny-bin"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "2012 Omari Norman.";
      maintainer = "omari@smileystation.com";
      author = "Omari Norman";
      homepage = "http://www.github.com/massysett/penny";
      url = "";
      synopsis = "Extensible double-entry accounting system - binary";
      description = "Penny is a double-entry accounting system. It is inspired\nby, but incompatible with, John Wiegley's Ledger, which is available\nat <http://ledger-cli.org/>. Installing this package with cabal\ninstall will install the executable program and the necessary\nlibraries. For more information, see the page for the Penny library,\nat <http://hackage.haskell.org/package/penny-lib>.\n\nPenny currently is designed only for UNIX-like operating systems.\n\nYou can install this binary simply by typing \"cabal install\npenny-bin\", which will install this binary along with all the\nnecessary dependencies. However, this will not install any of the\ndocumentation. To get the documentation, you will want to manually\ndownload the \"penny-bin-*.tar.gz\" file, available at the bottom of the\nHackage page (probably the bottom of the page you are looking at\nnow.) Alternatively, you can figure out where the \"cabal\" utility\nstored the archive file for you. After unpacking the archive you\nwill find a file, \"penny.1\", which is the manual page. You may copy\nthis file to the appropriate location on your system (maybe\n\\/usr\\/share\\/man\\/man1) or you can simply view it by giving the\nappropriate path to the UNIX \"man\" command. You will also find the\nfile \"samplePennyFile\", which will show you a sample ledger.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "penny" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."penny-lib" or ((hsPkgs.pkgs-errors).buildDepError "penny-lib"))
            ];
          buildable = true;
          };
        };
      };
    }