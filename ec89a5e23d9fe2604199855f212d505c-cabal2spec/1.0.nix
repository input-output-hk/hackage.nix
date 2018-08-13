{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2";
      identifier = {
        name = "cabal2spec";
        version = "1.0";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "konrad@tylerc.org";
      author = "Conrad Meyer, Yaakov M. Nemoy";
      homepage = "https://fedorahosted.org/cabal2spec/";
      url = "";
      synopsis = "Generates RPM Spec files from cabal files";
      description = "This package provides specfile templates and a script cabal2spec for easy\npackaging of Haskell Cabal packages (hackages) for ghc following\nthe Fedora Haskell Packaging Guidelines and associated RPM macros.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabal2spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.Unixutils)
            (hsPkgs.unix)
            (hsPkgs.old-locale)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
            (hsPkgs.Cabal)
            (hsPkgs.time)
            (hsPkgs.bytestring)
            (hsPkgs.zlib)
            (hsPkgs.tar)
          ];
        };
      };
    };
  }