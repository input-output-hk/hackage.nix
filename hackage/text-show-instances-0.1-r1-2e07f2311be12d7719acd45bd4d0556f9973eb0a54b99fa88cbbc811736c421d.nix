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
    flags = { transformers-four = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "text-show-instances"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2014 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/text-show-instances";
      url = "";
      synopsis = "Additional instances for text-show";
      description = "@text-show-instances@ is a supplemental library to @text-show@\nthat provides additional @Show@ instances for data types in\ncommon Haskell libraries not encompassed by @text-show@.\nCurrently, @text-show-instances@ covers these libraries:\n\n* @<http://hackage.haskell.org/package/containers           containers>@           DONE\n* @<http://hackage.haskell.org/package/directory            directory>@            DONE\n* @<http://hackage.haskell.org/package/hpc                  hpc>@                  DONE\n* @<http://hackage.haskell.org/package/old-locale           old-locale>@           DONE\n* @<http://hackage.haskell.org/package/old-time             old-time>@             DONE\n* @<http://hackage.haskell.org/package/pretty               pretty>@               DONE\n* @<http://hackage.haskell.org/package/random               random>@               DONE\n* @<http://hackage.haskell.org/package/semigroups           semigroups>@           DONE\n* @<http://hackage.haskell.org/package/tagged               tagged>@               DONE\n* @<http://hackage.haskell.org/package/template-haskell     template-haskell>@     DONE\n* @<http://hackage.haskell.org/package/time                 time>@                 DONE\n* @<http://hackage.haskell.org/package/transformers         transformers>@         DONE\n* @<http://hackage.haskell.org/package/unix                 unix>@                 DONE\n* @<http://hackage.haskell.org/package/unordered-containers unordered-containers>@ DONE\n* @<http://hackage.haskell.org/package/vector               vector>@               DONE\n* @<http://hackage.haskell.org/package/Win32                Win32>@                NOT DONE\n* @<http://hackage.haskell.org/package/xhtml                xhtml>@                DONE\n\nOne can use these instances by importing\n\"Text.Show.Text.Instances\". Alternatively, there are monomorphic\nversions of the @showb@ function available in the other submodules\nof \"Text.Show.Text\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
          (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
          (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
          ] ++ (if flags.transformers-four
          then [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            ]
          else [
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
        buildable = true;
        };
      tests = {
        "text-show-instances-properties" = {
          depends = ([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hpc" or (errorHandler.buildDepError "hpc"))
            (hsPkgs."old-locale" or (errorHandler.buildDepError "old-locale"))
            (hsPkgs."old-time" or (errorHandler.buildDepError "old-time"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."quickcheck-instances" or (errorHandler.buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (errorHandler.buildDepError "random"))
            (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
            (hsPkgs."text-show-instances" or (errorHandler.buildDepError "text-show-instances"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."xhtml" or (errorHandler.buildDepError "xhtml"))
            ] ++ (if flags.transformers-four
            then [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              ]
            else [
              (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (errorHandler.buildDepError "transformers-compat"))
              ])) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (errorHandler.buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (errorHandler.buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }