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
      specVersion = "1.4";
      identifier = { name = "uu-parsinglib"; version = "2.7.2.1"; };
      license = "MIT";
      copyright = "S Doaitse Swierstra";
      maintainer = "Doaitse Swierstra";
      author = "Doaitse Swierstra, Utrecht University";
      homepage = "http://www.cs.uu.nl/wiki/bin/view/HUT/ParserCombinators";
      url = "";
      synopsis = "Fast, online, error-correcting, monadic, applicative, merging, permuting, idiomatic parser combinators.";
      description = "New version of the Utrecht University parser combinator library, which  provides online, error correction,\nannotation free, applicative style parser combinators. In addition to this we do  provide a monadic and idomatic interface.\nParsers do analyse themselves to avoid commonly made errors. A recent addition was the combinator @`<||>`@ and\nassociates, which generalise merging and permuting parsers.\n\nThis version is based on the module \"Data.Listlike\", and as a result a great variety of input structures (@Strings@, @ByteStrings@, etc.)\ncan be handled.\n\nThe modules \"Text.ParserCombinators.UU.Demo.Examples\", \"Text.ParserCombinators.UU.Idioms\" and \"Text.ParserCombinators.UU.Demo.MergeAndpermute\"\ncontain a ready-made  @show_examples@  function,\nwhich can be called (e.g. from @ghci@) to see e.g. the error correction at work. It contains extensive haddock documentation, so why not just take a look                           to see the correction process at work, and to get a feeling for how the various combinators can be used?\n\nThe file \"Text.ParserCombinators.UU.CHANGELOG\" contains a log of the most recent changes and additions.\n\nThe file \"Text.ParserCombinators.UU.README\" contains some references to background information.\n\nWe maintain a low frequency mailing for discussing the package. You can subscribe at:  <https://mail.cs.uu.nl/mailman/listinfo/parsing>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."ListLike" or (buildDepError "ListLike"))
          ];
        };
      };
    }