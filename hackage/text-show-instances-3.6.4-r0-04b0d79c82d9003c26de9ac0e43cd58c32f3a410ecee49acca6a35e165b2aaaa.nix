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
      developer = false;
      base-4-9 = true;
      template-haskell-2-11 = true;
      new-functor-classes = true;
      };
    package = {
      specVersion = "1.10";
      identifier = { name = "text-show-instances"; version = "3.6.4"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2014-2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/text-show-instances";
      url = "";
      synopsis = "Additional instances for text-show";
      description = "@text-show-instances@ is a supplemental library to @text-show@\nthat provides additional @Show@ instances for data types in\ncommon Haskell libraries and GHC dependencies that are not\nencompassed by @text-show@. Currently, @text-show-instances@\ncovers these libraries:\n\n* @<http://hackage.haskell.org/package/bifunctors           bifunctors>@\n\n* @<http://hackage.haskell.org/package/binary               binary>@\n\n* @<http://hackage.haskell.org/package/containers           containers>@\n\n* @<http://hackage.haskell.org/package/directory            directory>@\n\n* @<http://hackage.haskell.org/package/ghc-boot-th          ghc-boot-th>@\n\n* @<http://hackage.haskell.org/package/haskeline            haskeline>@\n\n* @<http://hackage.haskell.org/package/hoopl                hoopl>@\n\n* @<http://hackage.haskell.org/package/hpc                  hpc>@\n\n* @<http://hackage.haskell.org/package/old-locale           old-locale>@\n\n* @<http://hackage.haskell.org/package/old-time             old-time>@\n\n* @<http://hackage.haskell.org/package/pretty               pretty>@\n\n* @<http://hackage.haskell.org/package/random               random>@\n\n* @<http://hackage.haskell.org/package/tagged               tagged>@\n\n* @<http://hackage.haskell.org/package/template-haskell     template-haskell>@\n\n* @<http://hackage.haskell.org/package/terminfo             terminfo>@\n\n* @<http://hackage.haskell.org/package/time                 time>@\n\n* @<http://hackage.haskell.org/package/transformers         transformers>@\n\n* @<http://hackage.haskell.org/package/unix                 unix>@\n\n* @<http://hackage.haskell.org/package/unordered-containers unordered-containers>@\n\n* @<http://hackage.haskell.org/package/vector               vector>@\n\n* @<http://hackage.haskell.org/package/Win32                Win32>@\n\n* @<http://hackage.haskell.org/package/xhtml                xhtml>@\n\nOne can use these instances by importing\n\"TextShow.Instances\". Alternatively, there are monomorphic\nversions of the @showb@ function available in the other submodules\nof \"TextShow\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ((([
          (hsPkgs."base-compat-batteries" or (errorHandler.buildDepError "base-compat-batteries"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
          (hsPkgs."hoopl" or (errorHandler.buildDepError "hoopl"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ] ++ [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ]) ++ (if flags.template-haskell-2-11
          then [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
            ]
          else [
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            ])) ++ (if flags.new-functor-classes
          then [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ]
          else [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [
            (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            ]);
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = (((([
            (hsPkgs."base-compat-batteries" or (errorHandler.buildDepError "base-compat-batteries"))
            (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
            (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
            (hsPkgs."haskeline" or (errorHandler.buildDepError "haskeline"))
            (hsPkgs."hoopl" or (errorHandler.buildDepError "hoopl"))
            (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            (hsPkgs."th-orphans" or (errorHandler.buildDepError "th-orphans"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ] ++ [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ]) ++ (if flags.template-haskell-2-11
            then [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              (hsPkgs."ghc-boot-th" or (errorHandler.buildDepError "ghc-boot-th"))
              ]
            else [
              (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
              ])) ++ (if flags.new-functor-classes
            then [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
              ]
            else [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              ])) ++ (pkgs.lib).optional (!flags.developer) (hsPkgs."text-show-instances" or (errorHandler.buildDepError "text-show-instances"))) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [
              (hsPkgs."terminfo" or (errorHandler.buildDepError "terminfo"))
              (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
              ]);
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }