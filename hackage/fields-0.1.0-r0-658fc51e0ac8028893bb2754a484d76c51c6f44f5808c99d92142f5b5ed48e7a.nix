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
      specVersion = "1.8.0.2";
      identifier = { name = "fields"; version = "0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jussi.knuuttila@tkk.fi";
      author = "Jussi Knuuttila";
      homepage = "http://github.com/AstraFIN/fields";
      url = "";
      synopsis = "First-class record field combinators with infix\nrecord field syntax.";
      description = "Using records, especially nested records, in\nHaskell can sometimes be a bit of a chore.\nFortunately, there are several libraries in hackage\nthat make working with records easier. This library\nis my attempt to build on top of these libraries to\nmake working with records even more pleasant!\n\nIn most imperative languages, records are accessed\nusing the infix dot operator. Record fields can be\nread simply by suffixing a record value with\n'.field' and they can be modified by simply\nassigning to that location. Although this is not\nthe only way to access records (indeed, Haskell\ndoes not use it), many people (including myself)\nlike it. This library attempts to support this\nstyle for Haskell records in the following manner:\n\n> record.field.subfield      becomes     record .# field # subfield\n> record.field = value       becomes     record .# field =: value\n\nOf course, the infix assignment in Haskell is pure\nand doesn't actually mutate anything. Rather, a\nmodified version of the record is returned.\n\nIn addition, the following features are supported:\n\n* Accessing several fields simultaneously using\ntuples.\nExample: @record .# (field1, field2, field3)@\n\n* Accessing records inside a @'Functor'@.\nExample: @recordInFunctor \\<.#\\> field@\n\n* Composing fields with @'Applicative'@ functors\nand @'Monad'@s.\nExample: @record .\\# applicativeField \\<\\#\\> subfield@\n\n* Pattern matching using @ViewPatterns@.\nExample: @case record of (match field -> 1) -> ...@\n\n* Easy comparisons etc. using @'onField'@.\nExample: @sortBy (compare \\`onField\\`\nfield#subfield) records@\n\nFor a detailed description of usage, see\n\"Data.Record.Field\".\n\nThis library is a work-in-progress. Some\nlimitations, deficiencies, points of interest and\npossible future improvements include:\n\n* Currently, a @'Field'@ instance is only provided\nfor @\"fclabels\"@ lenses, since that is what I\nhave personally used.  However, there should be\nnothing in principle that would prevent adding\ninstances for @\"data-accessor\"@ and @\"lenses\"@.\nHowever, doing this would make this package\ndepend on several record libraries at once,\nwhich might not be the best approach. Perhaps\nthis package should be split into several\npackages?\n\n* Similarly, the @'field'@ method currently\nreturns an @\"fclabels\"@ lens. To fully decouple\nthis package from @\"fclabels\"@, the @'field'@\nmethod probably has to be split into @getField@,\n@setField@ and @modField@ or something similar.\n\n* For monad transformers, @\"transformers\"@ and\n@\"monads-fd\"@ are used, since those are what\n@\"fclabels\"@ uses. This might be a problem for a\nprogram that uses @\"mtl\"@ instead.\n\n* To avoid lots of parentheses, @\"fields\"@ uses\nhigh-precedence operators at three operator\nprecedence levels. The goal was to make field\naccesses directly usable in arithmetic\nexpressions (e.g.  @r1\\.\\#int + r2\\.\\#int@).\nUnfortunately, since Haskell has a finite number\nof precedence levels, this goal was not properly\nmet, since @('*')@ and all higher-precedence\narithmetic operators have conflicting precedence\nlevels.\n\n* Performance has not been analyzed at all. To my\nknowledge, GHC doesn't do type class\nspecialization or method inlining by default, so\nneedlessly generic code might be generated, even\nif all types are statically known. I'm hoping\nthat this can be addressed using @SPECIALIZE@\nand @INLINE@ pragmas if it turns out to be an\nissue.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."fclabels" or (buildDepError "fclabels"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."monads-fd" or (buildDepError "monads-fd"))
          ];
        };
      };
    }