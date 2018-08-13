{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      threaded = true;
      gpl = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "hlint";
        version = "2.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2006-2018";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/hlint#readme";
      url = "";
      synopsis = "Source code suggestions";
      description = "HLint gives suggestions on how to improve your source code.";
      buildType = "Simple";
    };
    components = {
      "hlint" = {
        depends  = ([
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.containers)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.data-default)
          (hsPkgs.cpphs)
          (hsPkgs.cmdargs)
          (hsPkgs.yaml)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-exts-util)
          (hsPkgs.uniplate)
          (hsPkgs.ansi-terminal)
          (hsPkgs.extra)
          (hsPkgs.refact)
          (hsPkgs.aeson)
        ] ++ pkgs.lib.optional (_flags.gpl) (hsPkgs.hscolour)) ++ pkgs.lib.optional (compiler.isGhc && compiler.version.lt "8.0") (hsPkgs.semigroups);
      };
      exes = {
        "hlint" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hlint)
          ];
        };
      };
    };
  }