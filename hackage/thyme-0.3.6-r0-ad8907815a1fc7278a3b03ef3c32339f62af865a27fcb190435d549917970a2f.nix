{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      bug-for-bug = true;
      docs = false;
      hlint = false;
      lens = false;
      show-internal = false;
    };
    package = {
      specVersion = "1.10";
      identifier = { name = "thyme"; version = "0.3.6"; };
      license = "BSD-3-Clause";
      copyright = "© 2013−2014 Liyang HU";
      maintainer = "Fumiaki Kinoshita <fumiexcel@gmail.com>";
      author = "Liyang HU, Ashley Yakeley";
      homepage = "https://github.com/liyang/thyme";
      url = "";
      synopsis = "A faster time library";
      description = "@thyme@ is a performance-optimized rewrite of the excellent\n@<http://hackage.haskell.org/package/time time>@ library.\n\nSee @<http://hackage.haskell.org/package/thyme/docs/Data-Thyme-Docs.html Data.Thyme.Docs>@\nfor a full description.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-th-unbox" or (errorHandler.buildDepError "vector-th-unbox"))
          (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
        ] ++ pkgs.lib.optional (system.isWindows) (hsPkgs."Win32" or (errorHandler.buildDepError "Win32"))) ++ (if flags.lens || flags.docs
          then [ (hsPkgs."lens" or (errorHandler.buildDepError "lens")) ]
          else [
            (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          ])) ++ pkgs.lib.optionals (flags.docs) [
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
        ];
        build-tools = pkgs.lib.optional (system.isOsx || system.isFreebsd) (hsPkgs.pkgsBuildBuild.cpphs.components.exes.cpphs or (pkgs.pkgsBuildBuild.cpphs or (errorHandler.buildToolDepError "cpphs:cpphs")));
        buildable = true;
      };
      tests = {
        "sanity" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."attoparsec" or (errorHandler.buildDepError "attoparsec"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."thyme" or (errorHandler.buildDepError "thyme"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ] ++ (if flags.lens
            then [ (hsPkgs."lens" or (errorHandler.buildDepError "lens")) ]
            else [
              (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            ]);
          buildable = true;
        };
        "rewrite" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."thyme" or (errorHandler.buildDepError "thyme"))
          ];
          buildable = true;
        };
        "hlint" = {
          depends = pkgs.lib.optionals (flags.hlint) [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hlint" or (errorHandler.buildDepError "hlint"))
          ];
          buildable = if flags.hlint then true else false;
        };
      };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."criterion" or (errorHandler.buildDepError "criterion"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."thyme" or (errorHandler.buildDepError "thyme"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vector-space" or (errorHandler.buildDepError "vector-space"))
          ] ++ (if flags.lens
            then [ (hsPkgs."lens" or (errorHandler.buildDepError "lens")) ]
            else [
              (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
            ]);
          buildable = true;
        };
      };
    };
  }