{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      jenkins-build = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "fpco-api";
        version = "1.1.1.4";
      };
      license = "BSD-3-Clause";
      copyright = "2013 FP Complete";
      maintainer = "dev@fpcomplete.com";
      author = "FP Complete";
      homepage = "https://www.fpcomplete.com/page/api";
      url = "";
      synopsis = "Simple interface to the FP Complete IDE API.";
      description = "A server and library for communicating with the FP Complete IDE API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.scientific)
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.ini)
          (hsPkgs.data-default)
          (hsPkgs.text)
          (hsPkgs.network)
          (hsPkgs.optparse-applicative)
          (hsPkgs.safe)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.fay)
          (hsPkgs.lifted-base)
          (hsPkgs.monad-extras)
          (hsPkgs.monad-logger)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.http-conduit)
          (hsPkgs.texts)
          (hsPkgs.ghc-prim)
          (hsPkgs.template-haskell)
          (hsPkgs.attoparsec)
          (hsPkgs.syb)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.pretty-show)
          (hsPkgs.failure)
          (hsPkgs.resourcet)
          (hsPkgs.yesod-fay)
          (hsPkgs.http-types)
          (hsPkgs.persistent)
          (hsPkgs.persistent-template)
          (hsPkgs.tagged)
          (hsPkgs.random)
        ];
      };
      exes = {
        "fpco-api" = {
          depends  = [
            (hsPkgs.scientific)
            (hsPkgs.base)
            (hsPkgs.fpco-api)
            (hsPkgs.optparse-applicative)
            (hsPkgs.bytestring)
            (hsPkgs.network)
            (hsPkgs.safe)
            (hsPkgs.aeson)
            (hsPkgs.text)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.ini)
            (hsPkgs.data-default)
            (hsPkgs.process)
            (hsPkgs.unordered-containers)
          ];
        };
      };
    };
  }