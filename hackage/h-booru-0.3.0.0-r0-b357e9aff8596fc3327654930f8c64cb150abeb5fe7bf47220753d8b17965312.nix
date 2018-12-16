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
      specVersion = "1.16";
      identifier = {
        name = "h-booru";
        version = "0.3.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "fuuzetsu@fuuzetsu.co.uk";
      author = "Mateusz Kowalczyk";
      homepage = "https://github.com/Fuuzetsu/h-booru";
      url = "";
      synopsis = "Haskell library for retrieving data from various booru image sites";
      description = "Haskell library for retrieving data from various booru image sites.\nBy providing a common interface for such sites and some parsers for\nfew existing sites, the hope is to alleviate the effort of writing\napplications which interface with them.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.filepath)
          (hsPkgs.http-conduit)
          (hsPkgs.hxt)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.utf8-string)
          (hsPkgs.vinyl)
        ];
      };
      exes = {
        "h-booru" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-conduit)
            (hsPkgs.hxt)
            (hsPkgs.mtl)
            (hsPkgs.stm)
            (hsPkgs.template-haskell)
            (hsPkgs.transformers)
            (hsPkgs.utf8-string)
            (hsPkgs.vinyl)
          ];
        };
      };
    };
  }