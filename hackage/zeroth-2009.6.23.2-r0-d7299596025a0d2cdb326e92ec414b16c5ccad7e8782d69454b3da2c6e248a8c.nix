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
      specVersion = "1.6";
      identifier = {
        name = "zeroth";
        version = "2009.6.23.2";
      };
      license = "BSD-3-Clause";
      copyright = "2005-2008 Lemmih <lemmih@gmail.com>, 2009 Robin Green <greenrd@greenrd.org>";
      maintainer = "Robin Green <greenrd@greenrd.org>";
      author = "";
      homepage = "";
      url = "";
      synopsis = "ZeroTH - remove unnecessary TH dependencies";
      description = "TemplateHaskell is fairly useful for generating new\nHaskell code. This, however, can incur a dependency on\nTH on subsequent uses where none theoretically should exist.\nZeroTH solves this by scanning a file for top-level TH\ndeclarations, evaluates them, removes TH imports, and outputs\nthe resulting code.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.haskell-src-exts)
          (hsPkgs.directory)
          (hsPkgs.process)
          (hsPkgs.syb)
          (hsPkgs.template-haskell)
          (hsPkgs.hskeleton)
          (hsPkgs.hskeleton)
          (hsPkgs.derive)
          (hsPkgs.monoid-record)
          (hsPkgs.monoid-record)
          (hsPkgs.Cabal)
          (hsPkgs.Cabal)
          (hsPkgs.filepath)
        ];
      };
      exes = {
        "zeroth" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.base)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.syb)
            (hsPkgs.template-haskell)
            (hsPkgs.hskeleton)
            (hsPkgs.hskeleton)
            (hsPkgs.derive)
            (hsPkgs.monoid-record)
            (hsPkgs.monoid-record)
            (hsPkgs.Cabal)
            (hsPkgs.Cabal)
            (hsPkgs.filepath)
          ];
        };
      };
    };
  }