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
        name = "shell-conduit";
        version = "4.6.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014-2017 Chris Done";
      maintainer = "Sibi Prabakaran <sibi@psibi.in>";
      author = "Chris Done";
      homepage = "https://github.com/psibi/shell-conduit";
      url = "";
      synopsis = "Write shell scripts with Conduit";
      description = "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.control-monad-loop)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.monad-control)
          (hsPkgs.monads-tf)
          (hsPkgs.process)
          (hsPkgs.resourcet)
          (hsPkgs.semigroups)
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.unix)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.shell-conduit)
            (hsPkgs.hspec)
            (hsPkgs.hspec-expectations)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }