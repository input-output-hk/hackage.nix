{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      bytestring-in-base = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "llvm";
        version = "0.6.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Lennart Augustsson <lennart@augustsson.net>";
      author = "Bryan O'Sullivan, Lennart Augustsson";
      homepage = "http://darcs.serpentine.com/llvm/";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit";
      description = "Bindings to the LLVM compiler toolkit";
      buildType = "Custom";
    };
    components = {
      "llvm" = {
        depends  = if _flags.bytestring-in-base
          then [ (hsPkgs.base) ]
          else [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
            (hsPkgs.directory)
            (hsPkgs.process)
          ];
      };
    };
  }