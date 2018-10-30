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
      specVersion = "1.10";
      identifier = {
        name = "cabal2spec";
        version = "2.2.1";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "simons@cryp.to";
      author = "Peter Simons, Bryan O'Sullivan, Jens Petersen";
      homepage = "https://github.com/peti/cabal2spec";
      url = "";
      synopsis = "Convert Cabal files into rpm spec files";
      description = "Convert\nCabal files into a\n<http://ftp.rpm.org/max-rpm/s1-rpm-build-creating-spec-file.html spec file>\nsuitable for building the package with the RPM package manager. This\ntool primarily targets the <http://www.suse.com/ SUSE> and\n<http://www.opensuse.org openSUSE> familiy of distributions. Support\nfor other RPM-based distributions is currently not available. Check\nout <http://hackage.haskell.org/package/cabal-rpm cabal-rpm> if you\nneed this.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Cabal)
          (hsPkgs.filepath)
          (hsPkgs.time)
        ];
      };
      exes = {
        "cabal2spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal2spec)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
          ];
        };
      };
      tests = {
        "regression-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.cabal2spec)
            (hsPkgs.filepath)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
          ];
        };
      };
    };
  }