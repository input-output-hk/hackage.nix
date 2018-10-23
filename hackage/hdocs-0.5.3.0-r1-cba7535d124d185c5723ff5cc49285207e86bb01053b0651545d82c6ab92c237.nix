{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hdocs";
        version = "0.5.3.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "voidex@live.com";
      author = "Alexandr `Voidex` Ruchkin";
      homepage = "https://github.com/mvoidex/hdocs";
      url = "";
      synopsis = "Haskell docs tool";
      description = "Tool and library to get docs for installed packages and source files.\nCan return result in JSON format.\nCan dump docs for all installed modules\n\n@Usage:\nhdocs <module> - get docs for module/file\nhdocs <module> <name> - get docs for name in module/file\nhdocs dump [r] - dump all installed docs, if [r], find docs for reexported declarations\nflags\n-g GHC_OPT  --ghc=GHC_OPT  option to pass to GHC\n@";
      buildType = "Simple";
    };
    components = {
      "hdocs" = {
        depends  = ((([
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.Cabal)
          (hsPkgs.filepath)
          (hsPkgs.ghc-paths)
          (hsPkgs.containers)
          (hsPkgs.network)
          (hsPkgs.process)
          (hsPkgs.text)
          (hsPkgs.mtl)
        ] ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.3") [
          (hsPkgs.ghc)
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.2" && (compiler.isGhc && compiler.version.lt "8.3")) [
          (hsPkgs.ghc)
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.ge "8.0" && (compiler.isGhc && compiler.version.lt "8.2")) [
          (hsPkgs.ghc)
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
        ]) ++ pkgs.lib.optionals (compiler.isGhc && compiler.version.lt "8.0") [
          (hsPkgs.ghc)
          (hsPkgs.haddock-api)
          (hsPkgs.haddock-library)
        ];
      };
      exes = {
        "hdocs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hdocs)
            (hsPkgs.aeson)
            (hsPkgs.aeson-pretty)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.filepath)
            (hsPkgs.haddock-api)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.text)
          ];
        };
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hdocs)
            (hsPkgs.containers)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }