{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      debug = false;
      testexamples = false;
    };
    package = {
      specVersion = "1.20";
      identifier = {
        name = "arrowp-qq";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Jose Iborra <pepeiborra@gmail.com>";
      author = "Jose Iborra <pepeiborra@gmail.com>";
      homepage = "https://github.com/pepeiborra/arrowp";
      url = "";
      synopsis = "A preprocessor and quasiquoter for translating arrow notation";
      description = "A suite of preprocessor and quasiquoter to desugar arrow notation built on top of Ross Paterson's arrowp and the venerable haskell-src-exts.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.haskell-src-exts-util)
          (hsPkgs.haskell-src-meta)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.transformers)
          (hsPkgs.uniplate)
        ] ++ (if flags.debug
          then [
            (hsPkgs.Hoed)
            (hsPkgs.haskell-src-exts-observe)
          ]
          else [ (hsPkgs.NoHoed) ]);
      };
      exes = {
        "arrowp-ext" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.arrowp-qq)
            (hsPkgs.haskell-src-exts)
          ] ++ (if flags.debug
            then [ (hsPkgs.Hoed) ]
            else [ (hsPkgs.NoHoed) ]);
        };
      };
      tests = {
        "examples" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.arrows)
            (hsPkgs.arrowp-qq)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }