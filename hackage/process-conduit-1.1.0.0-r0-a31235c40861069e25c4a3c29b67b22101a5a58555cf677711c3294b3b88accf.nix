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
        version = "1.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011-2013, Hideyuki Tanaka";
      maintainer = "Hideyuki Tanaka <tanaka.hideyuki@gmail.com>";
      author = "Hideyuki Tanaka";
      homepage = "http://github.com/tanakh/process-conduit";
      url = "";
      synopsis = "Conduits for processes";
      description = "Conduits for processes.\nFor more details: <https://github.com/tanakh/process-conduit/blob/master/README.md>";
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
            (hsPkgs.process-conduit)
          ];
        };
      };
    };
  }