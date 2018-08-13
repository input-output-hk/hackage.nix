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
      specVersion = "1.10";
      identifier = {
        name = "doctest-discover-configurator";
        version = "0.1.0.6";
      };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ricky@elrod.me";
      author = "Karun Ramakrishnan, Ricky Elrod";
      homepage = "http://github.com/relrod/doctest-discover-noaeson";
      url = "";
      synopsis = "Easy way to run doctests via cabal (no aeson dependency, uses configurator instead)";
      description = "doctest-discover provides an easy way to run doctests via cabal (uses configurator instead of aeson)";
      buildType = "Simple";
    };
    components = {
      "doctest-discover-configurator" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.configurator)
          (hsPkgs.directory)
          (hsPkgs.doctest)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "doctest-discover" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.configurator)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.filepath)
          ];
        };
      };
      tests = {
        "doctests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest-discover-configurator)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }