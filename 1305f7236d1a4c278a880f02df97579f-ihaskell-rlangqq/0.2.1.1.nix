{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ihaskell-rlangqq";
          version = "0.2.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Adam Vogt <vogt.adam@gmail.com>";
        author = "Adam Vogt <vogt.adam@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "a rDisp quasiquote to show plots from Rlang-QQ in IHaskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        "ihaskell-rlangqq" = {
          depends  = [
            hsPkgs.base
            hsPkgs.Rlang-QQ
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.bytestring
            hsPkgs.base64-bytestring
            hsPkgs.ihaskell
            hsPkgs.ihaskell-blaze
            hsPkgs.blaze-html
            hsPkgs.split
            hsPkgs.stm
            hsPkgs.xformat
            hsPkgs.template-haskell
          ];
        };
      };
    }