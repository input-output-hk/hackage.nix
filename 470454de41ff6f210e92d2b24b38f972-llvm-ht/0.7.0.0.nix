{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "llvm-ht";
        version = "0.7.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Bryan O'Sullivan <bos@serpentine.com>, Lennart Augustsson <lennart@augustsson.net>, Henning Thielemann <llvm@henning-thielemann.de>";
      author = "Bryan O'Sullivan, Lennart Augustsson, Henning Thielemann";
      homepage = "http://darcs.serpentine.com/llvm/";
      url = "";
      synopsis = "Bindings to the LLVM compiler toolkit with some custom extensions.";
      description = "Bindings to the LLVM compiler toolkit.\nCustom extensions:\n* vector-aware versions of fptosi and friends\n* Callback from LLVM code into Haskell code including StablePtr support\n* tuple arguments to LLVM functions\n* instance IsFirstClass Array\n* CodeGen.constStruct\n* Instruction.extractvalue, insertvalue\n* Core.Instruction.bitcastUnify: like bitcast but uses type unification for asserting equal size of source and target\nNews in the original llvm package:\n* New in 0.7.0.0: Adapted to LLVM 2.6;\n* New in 0.6.8.0: Add functions to allow freeing function resources;\n* New in 0.6.7.0: Struct types;\n* New in 0.6.6.0: Bug fixes;\n* New in 0.6.5.0: Adapted to LLVM 2.5;";
      buildType = "Custom";
    };
    components = {
      "llvm-ht" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.type-level)
        ];
      };
    };
  }