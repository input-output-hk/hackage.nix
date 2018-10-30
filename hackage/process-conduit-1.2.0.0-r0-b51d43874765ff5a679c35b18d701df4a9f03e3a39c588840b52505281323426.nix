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
      specVersion = "1.8";
      identifier = {
        name = "process-conduit";
        version = "1.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2013, Hideyuki Tanaka";
      maintainer = "Michael Snoyman";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/snoyberg/process-conduit";
      url = "";
      synopsis = "Conduits for processes (deprecated)";
      description = "This package is deprecated. Please use Data.Conduit.Process from wai-extra instead. The original code is maintained in Data.Conduit.ProcessOld for those wishing to use the older API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.control-monad-loop)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.process)
          (hsPkgs.conduit)
          (hsPkgs.resourcet)
          (hsPkgs.shakespeare-text)
          (hsPkgs.shakespeare)
        ];
      };
      tests = {
        "process-conduit-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.conduit)
            (hsPkgs.conduit-extra)
            (hsPkgs.resourcet)
            (hsPkgs.process-conduit)
          ];
        };
      };
    };
  }