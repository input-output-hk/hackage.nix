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
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Write shell scripts with Conduit";
      description = "Write shell scripts with Conduit. See \"Data.Conduit.Shell\" for documentation.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
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
          (hsPkgs.split)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.transformers-base)
          (hsPkgs.text)
        ];
      };
    };
  }