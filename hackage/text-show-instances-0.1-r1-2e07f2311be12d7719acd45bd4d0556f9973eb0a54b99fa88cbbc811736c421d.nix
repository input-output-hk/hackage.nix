let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."hpc" or (buildDepError "hpc"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."pretty" or (buildDepError "pretty"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."semigroups" or (buildDepError "semigroups"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."xhtml" or (buildDepError "xhtml"))
          ] ++ (if flags.transformers-four
          then [ (hsPkgs."transformers" or (buildDepError "transformers")) ]
          else [
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
            ])) ++ (if system.isWindows
          then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
          else [ (hsPkgs."unix" or (buildDepError "unix")) ]);
        buildable = true;
        };
      tests = {
        "text-show-instances-properties" = {
          depends = ([
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."hpc" or (buildDepError "hpc"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."semigroups" or (buildDepError "semigroups"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."text-show-instances" or (buildDepError "text-show-instances"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            ] ++ (if flags.transformers-four
            then [ (hsPkgs."transformers" or (buildDepError "transformers")) ]
            else [
              (hsPkgs."transformers" or (buildDepError "transformers"))
              (hsPkgs."transformers-compat" or (buildDepError "transformers-compat"))
              ])) ++ (if system.isWindows
            then [ (hsPkgs."Win32" or (buildDepError "Win32")) ]
            else [ (hsPkgs."unix" or (buildDepError "unix")) ]);
          buildable = true;
          };
        };
      };
    }