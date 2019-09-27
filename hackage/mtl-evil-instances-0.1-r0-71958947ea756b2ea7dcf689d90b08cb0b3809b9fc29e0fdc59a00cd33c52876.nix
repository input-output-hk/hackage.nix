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
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "mtl-evil-instances"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "shane@duairc.com";
      author = "Shane O'Brien";
      homepage = "";
      url = "";
      synopsis = "Instances for the mtl classes for all monad transformers.";
      description = "WARNING: THIS PACKAGE IS EVIL. DO NOT USE IT!\n\nIt is common when defining a monad transformer to define instances for that\ntransformer for each class in the @mtl@ library, to allow easy composition\nwith the existing standard monad transformers. However, doing this is very\ntedious, and actually unnecessary, given that most of these instances across\ndifferent transformers are identical, and can actually be expressed purely\nin terms of @MonadTrans@, or @MonadTransControl@ (from the @monad-control@\npackage) for the more complicated classes.\n\nThe reason this is not generally done is because it requires the\n@OverlappingInstances@ extension, which is generally considered evil.\nHowever, it does actually work. If you define a monad transformer, and\ninstances for @MonadTrans@ and @MonadTransControl@, and import\n\"Control.Monad.Instances.Overlapping\", your monad transformer will magically\nhave sensible instances for all the @mtl@ type classes. And if you don't\nlike one of the instances provided, you can always define your own instance,\nwhich will override the \\\"default\\\" one provided by this package, because by\nthe rules for @OverlappingInstances@, your instance is more \\\"specific\\\"\nthan the one exported by \"Control.Monad.Instances.Overlapping\".\n\nThe main disadvantage of this is that errors in code using\n@OverlappingInstances@ can result in some really strange error messages that\nare not very helpful. The reason this is evil is because this places an\nadditional burden (of dealing with confusing error messages) not just on\nthose who use this package directly, but anybody who indirectly uses any\ncode that, somewhere down the line, imported\n\"Control.Monad.Instances.Overlapping\", due to the \\\"viral\\\" nature of\ninstances. Also, if another person were to make a package very similar to\nthis one, and somebody ended up importing both code that used this package,\nand code that used the other package, than neither of them would work\nanymore. This is the problem with orphan instances.\n\nIf you absolutely insist on using this code, you should probably define\nmanual instances for the @mtl@ classes the hard way as well, to avoid this\nkind of breakage (thus defeating the purpose of this package). Of course,\nrealistically, this package is for everyone who wishes to ignore all such\nadvice and do bad things anyway (including myself). This is my gift to you!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."monad-control" or (buildDepError "monad-control"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."transformers-base" or (buildDepError "transformers-base"))
          ];
        buildable = true;
        };
      };
    }