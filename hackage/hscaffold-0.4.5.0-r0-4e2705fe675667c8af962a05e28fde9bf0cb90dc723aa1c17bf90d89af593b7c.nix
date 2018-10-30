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
        name = "hscaffold";
        version = "0.4.5.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tacla.yamada@gmail.com";
      author = "Pedro Tacla Yamada";
      homepage = "https://github.com/yamadapc/hscaffold#readme";
      url = "";
      synopsis = "Very simple file/directory structure scaffolding writer monad EDSL";
      description = "See our README on GitHub at <https://github.com/yamadapc/hscaffold>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.unix)
          (hsPkgs.regex-compat)
          (hsPkgs.temporary)
          (hsPkgs.exceptions)
        ];
      };
      exes = {
        "hsfiles-from-directory" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.regex-compat)
            (hsPkgs.temporary)
            (hsPkgs.exceptions)
            (hsPkgs.hscaffold)
          ];
        };
      };
      tests = {
        "hspec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.mtl)
            (hsPkgs.transformers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.unix)
            (hsPkgs.regex-compat)
            (hsPkgs.temporary)
            (hsPkgs.exceptions)
            (hsPkgs.hspec)
            (hsPkgs.hscaffold)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }