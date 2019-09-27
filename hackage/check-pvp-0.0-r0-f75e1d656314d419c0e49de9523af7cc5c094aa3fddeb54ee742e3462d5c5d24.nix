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
      identifier = { name = "check-pvp"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Import_modules_properly";
      url = "";
      synopsis = "Check whether module and package imports conform to the PVP";
      description = "Check whether the version ranges used in the @Build-Depends@ field\nmatches the style of module imports\naccording to the Package Versioning Policy (PVP).\nSee <http://www.haskell.org/haskellwiki/Package_versioning_policy>.\nThe tool essentially looks for any dependency\nlike @containers >=0.5 && <0.6@\nthat allows the addition of identifiers to modules\nwithin the version range.\nThen it checks whether all module imports from @containers@\nare protected against name clashes\nthat could be caused by addition of identifiers.\n\nYou must run the tool in a directory containing a Cabal package.\n\n> \$ check-pvp\n\nThis requires that the package is configured,\nsince only then the association of packages to modules is known.\nIf you want to run the tool on a non-configured package\nyou may just check all imports for addition-proof style.\n\n> \$ check-pvp --include-all\n\nIt follows a detailed description of the procedure\nand the rationale behind it.\n\nFirst the program classifies all dependencies\nin the Cabal file of the package.\nYou can show all classifications with the @--classify-dependencies@ option,\notherwise only problematic dependencies are shown.\n\nA dependency like @containers >=0.5.0.3 && <0.5.1@\ndoes not allow changes of the API of @containers@\nand thus the program does not check its imports.\nClashing import abbreviations are an exception.\n\nThe dependency @containers >=0.5.1 && <0.6@\nrequires more care when importing modules from @containers@\nand this is what the program is going to check next.\nThis is the main purpose of the program!\nI warmly recommend this kind of dependency range\nsince it greatly reduces the work\nto keep your package going together with its imported packages.\n\nDependencies like @containers >=0.5@ or @containers >=0.5 && <1@\nare always problematic,\nsince within the specified version ranges identifier can disappear.\nThere is no import style that protects against removed identifiers.\n\nAn inclusive upper bound as in @containers >=0.5 && <=0.6@\nwill also cause a warning, because it is unnecessarily strict.\nIf you know that @containers-0.6@ works for you,\nthen @containers-0.6.0.1@ or @containers-0.6.1@ will also work,\ndepending on your import style.\nA special case of inclusive upper bounds are specific versions\nlike in @containers ==0.6@.\nThe argument for the warning remains the same.\n\nPlease note that the check of ranges\nis performed entirely on the package description.\nThe program will not inspect the imported module contents.\nE.g. if you depend on @containers >=0.5 && <0.6@\nbut import in a way that risks name clashes,\nthen you may just extend the dependency to @containers >=0.5 && <0.6.1@\nin order to let the checker fall silent.\nIf you use the dependency @containers >=0.5 && <0.6.1@\nthen the checker expects that you have verified\nthat your package works with all versions of kind @0.5.x@\nand the version @0.6.0@.\nOther versions would then work, too,\ndue to the constraints imposed by package versioning policy.\n\nLet us now look at imports\nthat must be protected against identifier additions.\n\nThe program may complain about a lax import.\nThis means you have imported like\n\n> import Data.Map as Map\n\nAdditions to @Data.Map@ may clash with other identifiers,\nthus you must import either\n\n> import qualified Data.Map as Map\n\nor\n\n> import Data.Map (Map)\n\nThe program may complain about an open list of constructors as in\n\n> import Data.Sequence (ViewL(..))\n\nAdditions of constructors to @ViewL@ may also conflict with other identifiers.\nYou must instead import like\n\n> import Data.Sequence (ViewL(EmptyL, (:<)))\n\nor\n\n> import qualified Data.Sequence as Seq\n\nThe program emits an error on clashing module abbreviations like\n\n> import qualified Data.Map.Lazy as Map\n> import qualified Data.Map.Strict as Map\n\nThis error is raised\nwhenever multiple modules are imported with the same abbreviation,\nwhere at least one module is open for additions.\nOur test is overly strict in the sense that it also blames\n\n> import qualified Data.Map as Map\n> import qualified Data.Map as Map\n\nbut I think it is good idea to avoid redundant imports anyway.\n\nAdditionally you can enable a test for hiding imports\nwith the @--pedantic@ option.\nThe import\n\n> import Data.Map hiding (insert)\n\nis not bad in the sense of the PVP,\nbut this way you depend on the existence of the identifier @insert@\nalthough you do not need it.\nIf it is removed in a later version of @containers@,\nthen your import breaks although you did not use the identifier.\n\nFinally you can control what items are checked.\nFirst of all you can select the imports that are checked.\nNormally the imports are checked that belong to lax dependencies\nlike @containers >=0.5 && <0.6@.\nHowever this requires the package to be configured\nin order to know which import belongs to which dependency.\nE.g. @Data.Map@ belongs to @containers@.\nYou can just check all imports for being addition-proof\nusing the @--include-all@ option.\nFollowing you can write the options\n@--include-import@,\n@--exclude-import@,\n@--include-dependency@,\n@--exclude-dependency@\nthat allow to additionally check or ignore imports\nfrom certain modules or packages.\nThese modifiers are applied from left to right.\nE.g. @--exclude-import=Prelude@ will accept any import style for @Prelude@\nand @--exclude-dependency=foobar@ will ignore the package @foobar@,\nsay, because it does not conform to the PVP.\n\nSecondly, you may ignore certain modules or components of the package\nusing the options\n@--exclude-module@,\n@--exclude-library@,\n@--exclude-executables@,\n@--exclude-testsuites@,\n@--exclude-benchmarks@.\nE.g. @--exclude-module=Paths_PKG@ will exclude the Paths module\nthat is generated by Cabal.\nI assume that it will always be free of name clashes.\n\nKnown problems:\n\n* The program cannot automatically filter out the @Paths@ module.\n\n* The program cannot find and check preprocessed modules.\n\n* The program may yield wrong results in the presence of Cabal conditions.\n\nIf this program proves to be useful\nit might eventually be integrated in the @check@ command of @cabal-install@.\nSee <https://github.com/haskell/cabal/issues/1703>.\n\nAlternative:\nIf you want to allow exclusively large version ranges, i.e. @>=x.y && <x.y+1@,\nthen you may also add the option @-fwarn-missing-import-lists@\nto the @GHC-Options@ fields of your Cabal file.\nSee <https://ghc.haskell.org/trac/ghc/ticket/4977>.\nUnfortunately there is no GHC warning on clashing module abbreviations.\nSee <https://ghc.haskell.org/trac/ghc/ticket/4980>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "check-pvp" = {
          depends = [
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."explicit-exception" or (buildDepError "explicit-exception"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."non-empty" or (buildDepError "non-empty"))
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }