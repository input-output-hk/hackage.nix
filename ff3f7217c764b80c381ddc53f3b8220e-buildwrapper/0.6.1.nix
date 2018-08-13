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
      specVersion = "1.8";
      identifier = {
        name = "buildwrapper";
        version = "0.6.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "JP Moresmau <jpmoresmau@gmail.com>";
      author = "JP Moresmau <jpmoresmau@gmail.com>, based on the work of Thomas Schilling and others";
      homepage = "https://github.com/JPMoresmau/BuildWrapper";
      url = "";
      synopsis = "A library and an executable that provide an easy API for a Haskell IDE";
      description = "Buildwrapper is an alternative to scion.\nIt provides services to configure, build and give information on source files to help IDEs manage Haskell projects.\nYou can use buildwrapper to build project and retrieve errors, get outline for each module source, get the type of something inside a source file, get lexer tokens, etc.\nBuildwrapper is used in the EclipseFP project (Eclipse plugins for Haskell development)";
      buildType = "Simple";
    };
    components = {
      "buildwrapper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.Cabal)
          (hsPkgs.process)
          (hsPkgs.regex-tdfa)
          (hsPkgs.ghc)
          (hsPkgs.ghc-paths)
          (hsPkgs.syb)
          (hsPkgs.text)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.cpphs)
          (hsPkgs.old-time)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.utf8-string)
          (hsPkgs.bytestring)
          (hsPkgs.attoparsec)
          (hsPkgs.transformers)
        ];
      };
      exes = {
        "buildwrapper" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.buildwrapper)
            (hsPkgs.cmdargs)
            (hsPkgs.filepath)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.ghc)
            (hsPkgs.cpphs)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.old-time)
            (hsPkgs.ghc-paths)
            (hsPkgs.vector)
            (hsPkgs.containers)
            (hsPkgs.syb)
            (hsPkgs.process)
            (hsPkgs.regex-tdfa)
            (hsPkgs.text)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "buildwrapper-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.buildwrapper)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.Cabal)
            (hsPkgs.old-time)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.attoparsec)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.transformers)
            (hsPkgs.vector)
            (hsPkgs.unordered-containers)
            (hsPkgs.containers)
          ];
        };
      };
    };
  }